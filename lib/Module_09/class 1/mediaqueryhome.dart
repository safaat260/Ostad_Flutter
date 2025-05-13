import 'package:flutter/material.dart';

class mediaqueryhome extends StatefulWidget {
  const mediaqueryhome({super.key});

  @override
  State<mediaqueryhome> createState() => _mediaqueryhomeState();
}

class _mediaqueryhomeState extends State<mediaqueryhome> {
  @override
  Widget build(BuildContext context) {
    //screensize
    Size screensize = MediaQuery.of(context).size;

    //fontsize
    double font_width_condtion = screensize.width > 700 ? 60 :20;

    //pixelratio
    double pixelratio = MediaQuery.of(context).devicePixelRatio;

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
            ),

            //font
            Text("MediaQuery Font check!", style: TextStyle(
              fontSize: font_width_condtion,
            ),),

            //pixelration
            Text("Pixel Ratio: $pixelratio"),

            //wrap
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children:
                List.generate(30, (index){
                  return Chip(label: Text("item $index"));
                }),
            ),

          ],
        ),
      ),




    );
  }
}
