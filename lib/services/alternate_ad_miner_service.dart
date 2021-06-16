import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AlternateAdMinerService {
  final _oneDay = 86400000000;
  final _auth = FirebaseAuth.instance;
  final _database = FirebaseDatabase.instance.reference();

  /* Check if ads are available in the pool
  returns <number of ads available> or
  0 if ads are not available but can be mined
  and -1 if mining is not possible
  */
  Future<int> isAdAvailable() async{
    Map<String, dynamic> appSettings =await getAppSettings();
    int status = -1;
    if(appSettings["adPool"] > 0 || appSettings["adPool"]  == -1){
      status = appSettings["adPool"];
    }else if(appSettings["adPool"] == 0 &&
        (appSettings["lastMined"]??0+ _oneDay) < new DateTime.now().microsecondsSinceEpoch){
      //if ad update is done more that 24 hours ago
      status = 0;
    }
    return status;
  }

  mineAds(){
    _database.child("3classifieds").orderByChild("timestamp")
        .endAt(new DateTime.now().microsecondsSinceEpoch - 7*_oneDay).once().then((value) {
      Map<dynamic, dynamic> data = value.value;
      if(data!=null) {
        data.forEach((key, value) {
          _database.child("3classifieds").child(key).remove().then((value) => incrementAdPool());
        });
      }
  }
    );
  }
  // helper function to get appSettings appSettings = jsonDecode(value.toString())
  Future<Map> getAppSettings() async {
    Map<String, dynamic> appSettings;
      await _database.child("3appSettings").get().then((value)=>{
       appSettings = Map<String, dynamic>.from(value.value)
      });
    return appSettings;
  }
  //reduce ad pool
  decrementAdPool() async{
        final TransactionResult transactionResult =
        await _database.child("3appSettings/adPool").runTransaction((MutableData mutableData) async {
          if(mutableData.value!=-1){
            print("decrementing ad");
            mutableData.value = mutableData.value==0 ?0:mutableData.value-1;
          }
      return mutableData;
    });
  }
  //increment ad pool
  incrementAdPool() async{
    final TransactionResult transactionResult =
    await _database.child("3appSettings/adPool").runTransaction((MutableData mutableData) async {
      print("incrementing ad");
      if(mutableData.value!=-1){
        mutableData.value = mutableData.value+1;
      }
      return mutableData;
    });
  }
}