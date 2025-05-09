import 'package:flutter/material.dart';

class mediaqueryhome extends StatefulWidget {
  const mediaqueryhome({super.key});

  @override
  State<mediaqueryhome> createState() => _mediaqueryhomeState();
}

class _mediaqueryhomeState extends State<mediaqueryhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
        centerTitle: true,

      ),

    );
  }
}
