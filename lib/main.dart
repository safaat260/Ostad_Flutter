import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//base of app
      title: "Bkash App",
      home: Home(),//Home is called in MyApp

    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//template where we do our things

      //appbar
      appBar: AppBar(
        backgroundColor: Colors.pink,
        //title one time use
        title: Text("Bkash App", style: TextStyle(//Textstyle is for modifying the text
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w400 // or.bol w900 is bold thickness
        ),
      ),
        centerTitle: true,//title move to center point
      ),

      //body

    );
  }
}

