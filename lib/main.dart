import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //base of app
      debugShowCheckedModeBanner: false,
      title: "Bkash App",
      home: Home(), //Home is called in MyApp
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //template where we do our things

      //appbar part
      appBar: AppBar(
        backgroundColor: Colors.pink,
        //title one time use
        title: Text(
          "Bkash App",
          style: TextStyle(
            //Textstyle is for modifying the text
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w400, // or.bol w900 is bold thickness
          ),
        ),
        centerTitle: true, //title move to center point
      ),

      //body column part 1 with icons and buttons
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //to take multiple column we need to use children
          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5), //space between two text
          //icons
          Icon(Icons.add, size: 70, color: Colors.pink),

          //iconbutton
          IconButton(
            onPressed: () {
              print("Delete Button Pressed");
            },
            icon: Icon(Icons.delete, size: 50),
          ),

          //textbutton
          TextButton(
            onPressed: () {
              print("Text button Clicked");
            },
            child: Text(
              "Click here to test",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //Inkwell is used to make icon  clickable
          InkWell(
              onTap: (){
                print("On tap pressed!");
              },
              onDoubleTap: (){
                print("On Double-tap pressed!");
              },
              onLongPress: (){
                print("Long pressed!");
              },
              child: Icon(Icons.favorite, size: 100, color: Colors.red)),

          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),

          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),

          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Bkash Body texts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
        ],
      ),

      //body column part 2

      // body: SingleChildScrollView(
      // child: Column(
      //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //
      //   children: [//to take multiple column we need to use children
      //
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     //SizedBox(height: 50),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //     Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //     ),),
      //
      //                 ]//childern
      //
      //             )
      //
      //       )

      //>>>>>body row<<<<<

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     //crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text("Bkash Body texts", style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.pink,
      //       fontWeight: FontWeight.w400,
      //       ),),
      //       SizedBox(width: 40),
      //       Text("Bkash Body texts", style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.pink,
      //         fontWeight: FontWeight.w400,
      //       ),),
      //       SizedBox(width: 40),
      //       Text("Bkash Body texts", style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.pink,
      //         fontWeight: FontWeight.w400,
      //       ),),
      //       SizedBox(width: 40),
      //       Text("Bkash Body texts", style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.pink,
      //         fontWeight: FontWeight.w400,
      //       ),),
      //       SizedBox(width: 40),
      //       Text("Bkash Body texts", style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.pink,
      //         fontWeight: FontWeight.w400,
      //       ),),
      //
      //     ],//children
      //   ),
      // ),
    );
  }
}
