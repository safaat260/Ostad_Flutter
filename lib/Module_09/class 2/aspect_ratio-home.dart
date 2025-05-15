import 'package:flutter/material.dart';

class aspect_home extends StatefulWidget {
  const aspect_home({super.key});

  @override
  State<aspect_home> createState() => _aspect_homeState();
}

class _aspect_homeState extends State<aspect_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aspect Ratio",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),

      //aspect ratio
      body: SingleChildScrollView(
        child: Column(
          children: [
            //felxible and flex
            Row(
              children: [
                Flexible(
                  flex: 3,//flex
                  //fit: FlexFit.tight/loose, //fit
                  child: Container(height: 100, color: Colors.black),
                ),

                Flexible(child: Container(height: 100, color: Colors.cyan)),

                Flexible(
                  flex: 2,
                  child: Container(height: 100, color: Colors.blueAccent),
                ),

                Flexible(child: Container(height: 100, color: Colors.pink)),

                Flexible(
                  flex: 3,
                  child: Container(height: 100, color: Colors.brown),
                ),
              ],
            ),

            Column(
              children: [
                Container(height: 100, color: Colors.purpleAccent),
                Container(height: 100, color: Colors.blueGrey),
              ],
            ),

            SizedBox(height: 20),

            //expanded
            Row(
              children: [
                Expanded(
                  flex: 2,//flex
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person-1"),
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person-2"),
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person-2"),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20),

            AspectRatio(
              aspectRatio: 16 / 9, //16:9 ratio
              child: Container(
                height: 200, //won't work parent is aspect ratio
                width: 50, //won't work parent is aspect ratio
                color: Colors.orange,
              ),
            ),

            AspectRatio(
              aspectRatio: 9 / 16, //9:16 ratio
              child: Container(color: Colors.green),
            ),

            AspectRatio(
              aspectRatio: 16 / 10, //16:10 ratio
              child: Container(color: Colors.blue),
            ),

            AspectRatio(
              aspectRatio: 4 / 3, //4:3 ratio
              child: Container(color: Colors.purpleAccent),
            ),

            AspectRatio(
              aspectRatio: 1 / 1, //4:3 ratio
              child: Container(color: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
