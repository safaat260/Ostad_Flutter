import 'package:flutter/material.dart';
import 'package:test1/Module_11/life_cycle_test.dart';

class lifecyclehome extends StatefulWidget {
  const lifecyclehome({super.key});

  @override
  State<lifecyclehome> createState() => _lifecyclehomeState();
}

class _lifecyclehomeState extends State<lifecyclehome> {

  //first runs the inside methods when the app is running
  @override
  void initState() {//start
    print("initstate called!");
    super.initState();
  }

  //shows the method when app leave
  @override
  void dispose() {//end
    print("Disposed Called");
    super.dispose();
  }

  //another thing same as initState
  @override
  void didChangeDependencies() {//2nd  step
    print("Did change Dependencies called for main page");
    super.didChangeDependencies();
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
