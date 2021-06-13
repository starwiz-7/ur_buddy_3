import 'package:flutter/material.dart';
import 'package:ur_buddy_3/buy_sell/widgets/buy_sell_grid_item.dart';

class BuyItemPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 70,
                width: double.infinity,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white12,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[850],
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    hintText: 'Search here',
                    hintStyle: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
              ),
              SizedBox(height: 10),
              Expanded(
                  child: GridView.extent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.6,
                  padding: EdgeInsets.all(8),
                  children: List.generate(10, (index) {
                    return BuyPageGridItem(
                      title: "Book",
                      index: index,
                      price: 269,
                      subtitle: "fuck the economy feat modi.",
                      imageUrl: "https://rolibooks.com/wp-content/uploads/2021/01/WhatsApp-Image-2020-12-24-at-09.48.54.jpeg",
                    );
                  }),
                ))
            ],
          ),
        ),
      );
  }
}
