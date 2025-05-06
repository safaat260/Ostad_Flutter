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
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Titan Killed:\n$counter".toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),

            SizedBox(height: 50),

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
                      ),
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
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ),
                ),

                SizedBox(width: 20),

                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
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
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),

            Card(

              //card styles
              color: Colors.black,
              elevation: 10,
              //shadowColor: Colors.redAccent,
              shape: RoundedRectangleBorder(

                //container all side box shape modify
                borderRadius: BorderRadius.only(
                  //bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  //topRight: Radius.circular(40),

                ),

                //border colors
                side: BorderSide(
                  color: Colors.redAccent,
                  width: 3,
                ),
              ),


              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 30,
                    ),

                  ],

                ),

                width: 350,
                child: Column(
                  children: [
                    Image.network(
                      "https://images.steamusercontent.com/ugc/823440303646988829/057D4CB42766804CD18CC5E9850FCC6B2C9B9388/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
                    ),
              
                    Text("Attack On Titan", style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
