import 'package:flutter/material.dart';

class lifecycletest extends StatefulWidget {
  const lifecycletest({super.key});

  @override
  State<lifecycletest> createState() => _lifecycletestState();
}

class _lifecycletestState extends State<lifecycletest> {
  @override
  void initState() {
    print("InitSate shown for lifecycle-test");
    super.initState();
  }

  @override
  void dispose() {
    print("Dispose shown for lifecycle-test");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Life_Cycle Test Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Column(children: []),
    );
  }
}
