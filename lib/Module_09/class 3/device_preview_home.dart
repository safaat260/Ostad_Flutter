import 'package:flutter/material.dart';

class device_preview_home extends StatefulWidget {
  const device_preview_home({super.key});

  @override
  State<device_preview_home> createState() => _device_preview_homeState();
}

class _device_preview_homeState extends State<device_preview_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Device Preview", style: TextStyle(color: Colors.white, fontSize: 30),),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),

      body: Column(
        children: [
          Center(child: Text("Device preview", style: TextStyle(fontSize: 30),)),
        ],
      ),

    );
  }
}
