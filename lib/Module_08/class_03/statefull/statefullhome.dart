import 'package:flutter/material.dart';

class counterwithstatefullwidget extends StatefulWidget {
  const counterwithstatefullwidget({super.key});

  @override
  State<counterwithstatefullwidget> createState() =>
      _counterwithstatefullwidgetState();
}

class _counterwithstatefullwidgetState
    extends State<counterwithstatefullwidget> {


  //auto update
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  //initial value
  int counter = 0;

  //disposal
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "StatefullWidget",
          style: TextStyle(
            fontSize: 30,
            color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                    onPressed: () {

                      setState(() {
                        //refreshed the page and showed in app only works in stful
                        counter--;
                        print("Counter now: $counter");
                      });


                      // //counter up in terminal
                      // counter--;
                      // print("Counter now: $counter");

                    },
                    child: Text("-", style: TextStyle(fontSize: 50, color: Colors.black)),
                  ),
                ),

                SizedBox(width: 20,),

                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                    onPressed: () {

                      setState(() {
                        //refreshed the page and showed in app only works in stful
                        counter++;
                        print("Counter now: $counter");
                      });


                      // //counter up in terminal
                      // counter++;
                      // print("Counter now: $counter");

                    },
                    child: Text("+", style: TextStyle(fontSize: 50, color: Colors.lightGreenAccent)),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
