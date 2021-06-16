import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AlternateAdMinerService {
  final _oneDay = 86400000000;
  final _auth = FirebaseAuth.instance;
  final _database = FirebaseDatabase.instance.reference();

  /* Check if ads are available in the pool
  returns <number of ads available>
  */
  Future<int> isAdAvailable() async{
    Map<String, dynamic> appSettings =await getAppSettings();
    return appSettings["adPool"];
  }

  //Return true if ad mining is successful else false
  Future<bool> mineAd(){
    return _database.child("3classifieds").orderByChild("timestamp")
        .endAt(new DateTime.now().microsecondsSinceEpoch - 9*_oneDay).limitToFirst(2).once().then((value) {
      Map<dynamic, dynamic> data = value.value;
      if(data!=null) {
        data.forEach((key, value) {
          //TODO : delete
          print("removing");
          print(key);
          _database.child("3classifieds").child(key).remove().then((value) => incrementAdPool());
        });
        return true;
      }
      return false;
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