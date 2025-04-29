import 'package:flutter/material.dart';

class Homecls2 extends StatelessWidget {
  const Homecls2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold backgroundcolor
      
      //backgroundColor: Colors.blue[200],//opacity changed
      //backgroundColor: Colors.green.withOpacity(0.6),//range 0-1
      backgroundColor: Colors.red.shade400, //rage 50-900
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Class_02",style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),

    );
  }
}
