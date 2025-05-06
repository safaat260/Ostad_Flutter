import 'package:flutter/material.dart';
import 'package:test1/Module_08/class_03/custom_widget/attackontitancustomwidget.dart';

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

            //customwidget called in a row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Attackontitan(titangif: 'https://images.steamusercontent.com/ugc/823440303646988829/057D4CB42766804CD18CC5E9850FCC6B2C9B9388/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false', titanname: 'Colossal titan',),
                  SizedBox(width: 20,),
                   Attackontitan(titangif: 'https://giffiles.alphacoders.com/115/115281.gif', titanname: 'Beast titan',),
                   SizedBox(width: 20,),
                   Attackontitan(titangif: 'https://64.media.tumblr.com/5fd6d72ba457b051d1ad00fcd8a1b0f1/tumblr_n60c6ouoGZ1raxepao1_500.gifv', titanname: 'Female titan',),
                   SizedBox(width: 20,),
                   Attackontitan(titangif: 'https://64.media.tumblr.com/ed1f2369893ced035d996b93d07e6f9c/tumblr_n60c6ouoGZ1raxepao3_500.gifv', titanname: 'Attack titan'),
                    SizedBox(width: 20,),
                  Attackontitan(titangif: 'https://giffiles.alphacoders.com/219/219658.gif', titanname: 'Armored titan',),
                ],
              
              ),
            )

          ],
        ),
      ),
    );
  }
}


