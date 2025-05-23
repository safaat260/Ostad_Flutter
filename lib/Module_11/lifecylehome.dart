import 'package:flutter/material.dart';
import 'package:test1/Module_11/life_cycle_test.dart';

class lifecyclehome extends StatefulWidget {
  const lifecyclehome({super.key});

  @override
  State<lifecyclehome> createState() => _lifecyclehomeState();
}

class _lifecyclehomeState extends State<lifecyclehome> {
  //initState
  @override
  void initState() {
    //first runs the inside methods when the app is running
    print("initstate called!");
    super.initState();
  }

  @override
  void dispose() {
    //shows the method when app leave
    print("Disposed Called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(
          "Life_Cycle",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [

          Center(
            child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>lifecycletest()));
                    }, child: Text("Next page")),
          ),

        ],
      ),
    );
  }
}
