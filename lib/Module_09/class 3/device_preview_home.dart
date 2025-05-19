import 'package:flutter/material.dart';

class device_preview_home extends StatefulWidget {
  const device_preview_home({super.key});

  @override
  State<device_preview_home> createState() => _device_preview_homeState();
}

class _device_preview_homeState extends State<device_preview_home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //tapbar
      length: 3,//if 4 added only 3 will work
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Device Preview",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,

          //drawer color is here
          iconTheme: IconThemeData(color: Colors.cyan),
          bottom: TabBar(
              tabs: [

                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.delete),
                  text: "Delete",
                ),
                Tab(
                  text: "settings",
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: "star",
                  icon: Icon(Icons.star),
                ),
              ]
          ),
        ),

        body: Column(
          children: [
            Center(child: Text("Device Preview checking 1 2 3 !")),
            Image.asset("asset/device_preview.png"),
            Image.asset("asset/Screenshot 2025-05-15 232719.png"),
          ],
        ),

        body: TabBarView(children: [
          Icon(Icons.home, size: 300,),
          Icon(Icons.delete, size: 300,),
          Icon(Icons.settings, size: 300,),
        ],
        ),

        drawer: Drawer(
          backgroundColor:
              Colors.cyan, //drawer color but icon color is inside appbar
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      //circle avatar
                      backgroundImage: NetworkImage(
                        "https://cdn.shopaccino.com/igmguru/products/flutter-igmguru_1527424732_l.jpg?v=531",
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      "Flutter App",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("By Ostad batch 10", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),

              Divider(thickness: 10, color: Colors.yellow),
              ListTile(
                title: Text(
                  "option-1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),

                onTap: () {
                  print("1 tap Pressed");
                },
              ),

              //divided box
              Divider(thickness: 10, color: Colors.red, height: 100),
              ListTile(
                title: Text(
                  "option-2",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),

                onLongPress: () {
                  print("Long Pressed");
                },
              ),

              Divider(thickness: 5, color: Colors.purpleAccent, height: 50),

              ListTile(
                title: Text(
                  "option-3",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onFocusChange: (bool hasFocus) {
                  // Do something when focus changes
                  print("ListTile is focused: $hasFocus");
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
