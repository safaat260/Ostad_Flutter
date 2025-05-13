import 'package:flutter/material.dart';

class mediaqueryhome extends StatefulWidget {
  const mediaqueryhome({super.key});

  @override
  State<mediaqueryhome> createState() => _mediaqueryhomeState();
}

class _mediaqueryhomeState extends State<mediaqueryhome> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query", style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),

      body: Container(
        width: screensize.width,
        height: screensize.height,
        color: Colors.green,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
              width: screensize.width*0.5,
              height: screensize.height*0.5,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),



    );
  }
}
