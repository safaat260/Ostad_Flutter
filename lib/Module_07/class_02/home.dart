import 'package:flutter/material.dart';

class Homecls2 extends StatelessWidget {
  const Homecls2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold backgroundcolor
      
      //backgroundColor: Colors.blue[200],//opacity changed
      //backgroundColor: Colors.green.withOpacity(0.6),//range 0-1
      backgroundColor: Colors.green.shade200, //rage 50-900
      
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
          child: SingleChildScrollView(
            child: Column(
              children: [
            
                //elevated button
                Align(
                  alignment: Alignment(0.9, 0),
                  child: ElevatedButton(
                    //button modification
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
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
                ),
            
                SizedBox(height: 50,),
            
                //elevated button 2 with shapes
                SizedBox(
                  height: 250,
                  //height: double.infinity,//crashed
            
                  //width: 300,
                  width: double.infinity,
                  child: ElevatedButton(
                    //button modification
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
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
                  child: Align(
                    alignment: Alignment(-2.5, 0),
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
                ),
            
                SizedBox(height: 60,),
            
                //gesture button
                Align(
                  alignment: Alignment(-0.7, 2),
                  child: GestureDetector(
                    onTap: (){
                      print("One tap");
                    },
                              
                    onDoubleTap: (){
                      print("Double-Tap");
                    },
                              
                    onLongPress: (){
                      print("Long Tap Press!");
                    },
                              
                      child: Text("Gesture Detector button!", style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),)),
                ),

                SizedBox(height: 40,),

                //text overflow handle
                Text(
                  overflow: TextOverflow.ellipsis,//gives ....
                  //softWrap: false,//pixel wise
                  //maxLines: 4,//gives 4 max lines
            
                    "Overflow text handle here!!! Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. "
                    "This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since th reproduced below those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites o Cicero are also reproduced their exact original form, accompanied by English versions from the  translation by H. Rackham", style: TextStyle(fontSize: 20),),
                  
                  //container
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.all(60),
                  margin: EdgeInsets.only(top: 50, right: 150),
                  padding: EdgeInsets.all(15),
                  width: 200,
                  height: 200,
                  //color: Colors.blue,

                  //decoration
                  decoration: BoxDecoration(
                    //container color + boxdecoration color=crash
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 7,

                    ),

                    //boxshadow
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(15, 15),
                        blurRadius: 10,


                      ),
                    ],

                  ),





                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  //margin: EdgeInsets.all(60),
                  margin: EdgeInsets.only(top: 50, bottom: 100, left: 130),
                  //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                  width: 200,
                  height: 200,
                  //color: Colors.blue,

                  //decoration
                  decoration: BoxDecoration(
                    //container color + boxdecoration color=crash
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 7,

                    ),

                    //boxshadow
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(15, 15),
                        //blurRadius: 10,


                      ),
                    ],

                  ),





                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Container Text!", style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                    ),
                  ),
                ),
                
            
              ],//children
            
            ),
          ),




      ),

      //floating action button
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(onPressed: (){
          print("Floating Button CLicked!");
        },
        child: Icon(Icons.add_call,size: 40,),




        ),
      ),

    );
  }
}
