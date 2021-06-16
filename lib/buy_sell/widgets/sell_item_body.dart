import 'package:flutter/material.dart';


import 'package:ur_buddy_3/buy_sell/widgets/price_condition_row.dart';
import 'package:ur_buddy_3/buy_sell/widgets/title_image_row.dart';
import 'package:ur_buddy_3/common_widgets/custom_flatButton.dart';
import 'package:ur_buddy_3/common_widgets/custom_textField.dart';
import 'package:ur_buddy_3/services/service_locator.dart';
import 'package:ur_buddy_3/services/alternate_ad_miner_service.dart';



class SellPageBody extends StatelessWidget {
  SellPageBody({
    Key key
  }) : super(key: key);
  AlternateAdMinerService adMinerService = getIt<AlternateAdMinerService>();
  @override
  Widget build(BuildContext context) {
    postingProcess() async{
      {
        //TODO: Start Loader
        //check current add pool
        int adPool = await adMinerService.isAdAvailable();
        if(adPool==0){
          adMinerService.mineAds();
        }else if(adPool==-1){
          //send to sell page
          print("sorry no add available");
        }else{
          //post ad
          //TODO: do posting logic
          adMinerService.decrementAdPool();
        }
      }
    }
    testfunction() async{
      adMinerService.decrementAdPool();
      int adPool =await adMinerService.isAdAvailable();
      print(adPool);
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 15, 13, 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            TitleImageRow(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: CustomTextField(
                label: 'Description',
                maxlines: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PriceConditionRow(),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomFlatButton(
                label: 'Put On Sale',
                onPressed: () async=> testfunction()
,
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
