import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ur_buddy_3/common_widgets/custom_flatButton.dart';
import 'package:ur_buddy_3/buy_sell/widgets/CustomTextField2.dart';
import 'package:ur_buddy_3/buy_sell/widgets/image_input.dart';

class SellItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Sell New Item',
              ),
            ],
          ),
        ),
        body: SellPageBody(),
      ),
    );
  }
}

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageInput(),
                SizedBox(
                  height: MediaQuery.of(context).size.longestSide / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.longestSide / 3.5,
                        child: CustomTextField(
                          label: 'Title',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.longestSide / 3.5,
                        child: CustomTextField(
                          label: 'Subtitle',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: CustomTextField(
                    label: 'Price',
                    hasPrefix: true,
                    hasNumInput: true,
                    prefixIcon: FontAwesomeIcons.rupeeSign,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Condition',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 20),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4.2,
                  child: CustomTextField(
                    hasSuffix: true,
                    hasNumInput: true,
                    suffixtext: ' / 5',
                  ),
                ),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}
