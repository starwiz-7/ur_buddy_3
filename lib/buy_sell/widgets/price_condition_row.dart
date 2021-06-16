import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ur_buddy_3/common_widgets/custom_textField.dart';

class PriceConditionRow extends StatelessWidget {
  final Function(String value) onChangedPrice;
  final Function(String value) onChangedCondition;

  const PriceConditionRow({
    Key key,
    this.onChangedPrice,
    this.onChangedCondition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 3.2,
          child: CustomTextField(
            label: 'Price',
            hasPrefix: true,
            hasNumInput: true,
            prefixIcon: FontAwesomeIcons.rupeeSign,
            onChanged: onChangedPrice,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Condition',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.width / 5,
          child: CustomTextField(
            hasSuffix: true,
            hasNumInput: true,
            suffixtext: ' / 5  ',
            onChanged: onChangedCondition,
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
