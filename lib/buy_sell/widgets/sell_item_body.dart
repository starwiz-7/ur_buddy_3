import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ur_buddy_3/buy_sell/widgets/price_condition_row.dart';
import 'package:ur_buddy_3/buy_sell/widgets/title_image_row.dart';
import 'package:ur_buddy_3/common_widgets/custom_flatButton.dart';
import 'package:ur_buddy_3/common_widgets/custom_textField.dart';
import 'package:ur_buddy_3/services/service_locator.dart';
import 'package:ur_buddy_3/services/alternate_ad_miner_service.dart';
import 'package:ur_buddy_3/models/classified.dart';

class SellPageBody extends StatefulWidget {
  const SellPageBody({
    Key key,
  }) : super(key: key);
  @override
  _SellPageBodyState createState() => _SellPageBodyState();
}

class _SellPageBodyState extends State<SellPageBody> {
  var _title = '';
  var _subTitle = '';
  var _description = '';
  var _price = '';
  var _condition = '';

  bool _isLoading = false;

  AlternateAdMinerService adMinerService = getIt<AlternateAdMinerService>();
  Future<void> _submitClassified() async {
    if (_title.isEmpty ||
        _subTitle.isEmpty ||
        _description.isEmpty ||
        _price.isEmpty ||
        _condition.isEmpty) {
      return;
    }
    setState(() {
      _isLoading = true;
    });
    FocusScope.of(context).unfocus();
    print("$_title, $_subTitle, $_description, $_price, $_condition");
    await Provider.of<ClassifiedsProvider>(
      context,
      listen: false,
    ).addClassified(
      Classified(null, _title, _subTitle, _description, _price, _condition),
    );
    setState(() {
      _isLoading = false;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    _postingProcess() async{
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
    //TODO: clean up
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
            TitleImageRow(
              onChangedTitle: (value) {
                _title = value;
              },
              onChangedSubTitle: (value) {
                _subTitle = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: CustomTextField(
                label: 'Description',
                maxlines: 10,
                onChanged: (value) {
                  _description = value;
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PriceConditionRow(
              onChangedPrice: (value) {
                _price = value;
              },
              onChangedCondition: (value) {
                _condition = value;
              },
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomFlatButton(
                      label: 'Put On Sale',
                      onPressed: () => adMinerService.mineAds(),
                    ),//_submitClassified()
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
