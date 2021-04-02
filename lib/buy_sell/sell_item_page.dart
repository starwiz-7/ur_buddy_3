import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class SellItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Color(0XFF171414),
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
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0XFF171414),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(13, 15, 13, 15),
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5.2,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0XFFC4C4C4),
                    ),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: Color(0XFFFDF4F4),
                      size: MediaQuery.of(context).size.shortestSide / 8,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 13,
                          width: MediaQuery.of(context).size.width / 1.9,
                          decoration: BoxDecoration(
                            color: Color(0XFF1E1C24),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0XFF25242C),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextField(
                              cursorColor: Colors.white,
                              cursorHeight: 18,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                              ),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  color: Color(0XFF696874),
                                  letterSpacing: 1.1,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                ),
                                hintText: 'Title',
                                //floatingLabelBehavior:
                                   // FloatingLabelBehavior.auto,
                                //labelText: 'Title',
                                //alignLabelWithHint: true,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 13,
                          width: MediaQuery.of(context).size.width / 1.9,
                          decoration: BoxDecoration(
                            color: Color(0XFF1E1C24),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0XFF25242C),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextField(
                              cursorColor: Colors.white,
                              cursorHeight: 18,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat'),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  color: Color(0XFF696874),
                                  letterSpacing: 1.1,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                ),
                                hintText: 'Subtitle',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0XFF1E1C24),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0XFF25242C),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    cursorHeight: 18,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF1E1C24),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF1E1C24),
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0XFF696874),
                        letterSpacing: 1.1,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                      ),
                      hintText: 'Description',
                    ),
                    maxLines: 8,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.height / 11,
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      Positioned(
                        top: 7,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 13,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            color: Color(0XFF1E1C24),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0XFF25242C),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.white,
                              cursorHeight: 18,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                letterSpacing: 1.3,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFF1E1C24),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  color: Color(0XFF696874),
                                  letterSpacing: 1.1,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                ),
                                prefixIcon: Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 10,
                        child: Text(
                          'Price',
                          style: TextStyle(
                            color: Color(0XFF696874),
                            letterSpacing: 1.1,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                      /*Positioned(
                        top: 20,
                        left: 7,
                        child: Icon(
                          FontAwesomeIcons.rupeeSign,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'Condition',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 4.2,
                            decoration: BoxDecoration(
                              color: Color(0XFF1E1C24),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0XFF25242C),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 20, 10, 0),
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.white,
                                cursorHeight: 18,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                ),
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFF1E1C24),
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFF1E1C24),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1.1,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                  ),
                                  suffixText: '/ 5',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () => print('Item on Sale'),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Put On Sale',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      //letterSpacing: 1.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
