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
            Text(
              "Titan Killed:\n$counter".toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                      Row(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Image.network(
                                "https://gifdb.com/images/high/armin-498-x-278-gif-jitkq870p7ym6g16.webp",
                              ),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Image.network(
                                "https://images.steamusercontent.com/ugc/1047596647999422866/F476F35240D7FDC527CF237D47142A3BFCA6F970/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
                              ),
                            ),
                          ],

                        ),
                      ),
                  ],
                    ),
              ],
            ),

            //customwidget called in a row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Attackontitan(
                    titangif:
                        'https://images.steamusercontent.com/ugc/823440303646988829/057D4CB42766804CD18CC5E9850FCC6B2C9B9388/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false',
                    titanname: 'Colossal titan',
                    titanrate: '9.5',
                  ),
                  SizedBox(width: 20),
                  Attackontitan(
                    titangif: 'https://giffiles.alphacoders.com/115/115281.gif',
                    titanname: 'Beast titan',
                    titanrate: '9.2',
                  ),
                  SizedBox(width: 20),
                  Attackontitan(
                    titangif:
                        'https://media1.tenor.com/m/FHy6bFeNHp4AAAAd/aot-annie-aot.gif',
                    titanname: 'Female titan',
                    titanrate: '9.7',
                  ),
                  SizedBox(width: 20),
                  Attackontitan(
                    titangif:
                        'https://gifdb.com/images/high/eren-yeager-enraged-titan-dmoacr4v9tcgyxg2.webp',
                    titanname: 'Attack titan',
                    titanrate: '10',
                  ),
                  SizedBox(width: 20),
                  Attackontitan(
                    titangif:
                        'https://media1.tenor.com/m/YdWxpsrTXccAAAAd/armored-titan-attack-on-titan.gif',
                    titanname: 'Armored titan',
                    titanrate: '8.5',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
