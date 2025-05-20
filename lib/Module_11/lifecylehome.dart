import 'package:flutter/material.dart';

class lifecyclehome extends StatefulWidget {
  const lifecyclehome({super.key});

  @override
  State<lifecyclehome> createState() => _lifecyclehomeState();
}

class _lifecyclehomeState extends State<lifecyclehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Life_Cycle", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [

        ],
      ),
    );
  }
}
