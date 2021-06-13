import 'package:flutter/material.dart';


class BuySell extends StatelessWidget {
  const BuySell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                          onPressed: () => null,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Buy',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                      decorationThickness: 2,
                                      fontSize: 30,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          color: Colors.black),
                      RaisedButton(
                          onPressed: () => null,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Sell',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          color: Colors.black),
                    ],
                  ),
                  padding: EdgeInsets.all(20), 
                ),
                
                Container(
                  height: 70,
                  width: 390,
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
                  padding: EdgeInsets.all(5),
                ),
                Column(children: <Widget>[
                  SizedBox(height: 20),
                ]),
                Container(
                    height: 1000,
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  'https://i.pinimg.com/200x150/10/01/83/1001833a4ec41b211d2780223ae58773.jpg',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "   Books\n  Cost:230.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100]),
                                    
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        Container(
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  'https://images2.imgix.net/p4dbimg/1712/images/dm252-1.jpg?fit=fill&trim=color&trimcolor=FFFFFF&trimtol=5&bg=FFFFFF&w=200&h=150&fm=pjpg&auto=format',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "   Matress\n  Cost:420.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.green[100]),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        Container(
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  'http://www.gridzcatalog.in/images_products/thumbnail/cushion-cover_9540_3.JPG',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "   Pillow\n   Cost:125.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.pink[50]),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        Container(
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  'https://s3-us-west-2.amazonaws.com/termsheet-uploadcare-assets/trackervc/778712f0-dd3b-488b-863b-734dd6a54715/buckets.crop_496x372_65,0.resize_200x150.jpg',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "   Bucket\n   Cost:680.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[600]),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
