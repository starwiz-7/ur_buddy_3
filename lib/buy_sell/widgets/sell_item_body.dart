import 'package:flutter/material.dart';


import 'package:ur_buddy_3/buy_sell/widgets/price_condition_row.dart';
import 'package:ur_buddy_3/buy_sell/widgets/title_image_row.dart';
import 'package:ur_buddy_3/common_widgets/custom_flatButton.dart';
import 'package:ur_buddy_3/common_widgets/custom_textField.dart';



class SellPageBody extends StatelessWidget {
  const SellPageBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () => print('Item Put on Sale'),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
