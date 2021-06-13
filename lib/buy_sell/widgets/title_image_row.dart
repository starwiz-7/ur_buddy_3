import 'package:flutter/material.dart';
import 'package:ur_buddy_3/buy_sell/widgets/image_input.dart';
import 'package:ur_buddy_3/common_widgets/custom_textField.dart';

class TitleImageRow extends StatelessWidget {
  const TitleImageRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ImageInput(),
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 5,
                child: CustomTextField(
                  label: 'Title',
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 5,
                child: CustomTextField(
                  label: 'Subtitle',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
