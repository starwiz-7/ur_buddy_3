import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: ProfilePage(),
    );
  }
}
class ProfilePage extends StatelessWidget{
  Widget textfield({@required String hintText, int maxlines =1}){
  return Material(
    //elevation: 1,
    //shadowColor: Colors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
      child: TextField(
        cursorColor: Colors.white,
        cursorWidth:3.0,
        maxLines: maxlines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 1,
            color: Colors.white54,
            //fontWeight: FontWeight.bold,
          ),
          fillColor: Color(0XFF1E1C24),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(color: Colors.white24,width:0.5),
            borderRadius: BorderRadius.circular(18.0),
            
          )
          )
      ),
  );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0X161513),
     appBar: AppBar(
       centerTitle: true,
       title: Text(
         'Organise Event',
         style: TextStyle(
           fontSize:30,
            letterSpacing:1.5,
            color: Colors.white,
            fontWeight: FontWeight.w600,
         ),
       ),
       elevation: 0.0,
       backgroundColor: Color(0X161513),
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios_sharp),
         onPressed: () {},
       ),
        ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Container(
               
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(
                      hintText:'Event name',
                    ),
                    SizedBox(height: 20.0),
                    Row(
                    children:<Widget>[
                
                        //Expanded(
                       /* child:*/ Container(
                          child:Text(
                            "Date",
                            style: TextStyle(
                              fontSize:20.0,
                              color: Colors.white,
                             // fontWeight: FontWeight.bold,
                            ),
                            ),
                        
                        ),
                       // ),
                       SizedBox(width:40),
                        Expanded(
                       child:  Container(
   
                         
                          child: textfield(hintText:'From'),
                          ),
                          ),
                        
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Container(
                        
                          child: textfield(hintText:'To'),
                          ),
                        ),
                        SizedBox(width: 90.0),
                      ]
                  
                    ),
                    SizedBox(height: 20.0),
                   Row(
                      children:<Widget>[
                       // Expanded(
                       /* child:*/Container(
                          child:Text(
                            "Time",
                            style: TextStyle(
                              fontSize:20.0,
                              color: Colors.white,
                            //  fontWeight: FontWeight.bold,
                            ),
                           ),
    
                        ),
                       // ),
                        SizedBox(width:40),
                          Expanded(
                         child: Container(
                        
                          child: textfield(hintText:'From'),
                          ),
                          ),
                          SizedBox(width: 20.0),
                        Expanded(
                        child :Container(
        
                          child: textfield(
                        
                            hintText:'To'),
                          ),
                        ),
                        SizedBox(width:90),
                      ],
                  
                    ),
                  
                    SizedBox(height:20.0),
                    Container(
                  child: textfield(
                    maxlines: 5,
                    hintText:'Description',
                    
                    ),
                    ),
                    SizedBox(height:20.0),
                    textfield(
                  hintText:'Registration Link',
                    ),
                    SizedBox(height:15.0),
                  ],
                
                )
                
              )
            
            ]
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
            ),
            /*painter: HeaderCurvedContainer()*/
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
              
              ),
              Container(
                padding: EdgeInsets.all(0.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                 /* border: Border.all(color: Colors.white,width:5)*/
                  shape: BoxShape.rectangle,
                  /*color: Colors.white,*/
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/event.jpg'),
                  )
                )
              )
            ],
          ),
         
        ],
      )
    );
  }
}
