import 'package:flutter/material.dart';

class Homecls2 extends StatelessWidget {
  const Homecls2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold backgroundcolor
      
      //backgroundColor: Colors.blue[200],//opacity changed
      //backgroundColor: Colors.green.withOpacity(0.6),//range 0-1
      backgroundColor: Colors.grey.shade400, //rage 50-900
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Class_02",style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),

      //body
      body: Center(
        child: Column(
          children: [

            //elevated button
            ElevatedButton(
              //button modification
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.red,

                  //shape
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )

                ),

                //button action
                onPressed: (){
              print("Elevated button pressed!");
            }, child: Text(">Elevated_Button<")),

            SizedBox(height: 50,),

            //elevated button 2
            SizedBox(
              height: 250,
              //height: double.infinity,//crashed

              //width: 300,
              width: double.infinity,
              child: ElevatedButton(
                //button modification
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.red,
              
                      //shape
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
              
                  ),
              
                  //button action
                  onPressed: (){
                    print("Elevated button pressed!");
                  }, child: Text(">Elevated_Button<",style: TextStyle(
                    fontSize: 30,
              ),)),
            ),

            SizedBox(height: 50,),

            //outlinedbutton
            SizedBox(
              height: 100,
              width: 300,
              child: OutlinedButton(
                //outline button modification
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.orange,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),


                  )
                ),

                  onPressed: (){
                print("Outline button Pressed!");
              }, child: Text("Outline Button!", style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                backgroundColor: Colors.black,

              ),)),
            ),




          ],//children

        ),



      ),


    );
  }
}
