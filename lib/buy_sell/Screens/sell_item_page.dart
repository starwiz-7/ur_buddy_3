import 'package:flutter/material.dart';

import 'package:ur_buddy_3/buy_sell/widgets/sell_item_body.dart';



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

