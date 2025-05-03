import 'package:flutter/material.dart';

class Gridviewhome extends StatelessWidget {
  const Gridviewhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Grid_View", style: TextStyle(
          fontSize: 25,
          color: Colors.yellow,
        ),)
      ),

      //gridview. count

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10, (index) {
      //     return Card(
      //       elevation: 5,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(12),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.all(12),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: [
      //                 const Icon(Icons.phone, color: Colors.blue),
      //                 const Spacer(),
      //                 const Icon(Icons.delete, color: Colors.red),
      //               ],
      //             ),
      //             const SizedBox(height: 16),
      //             const Text(
      //               "Taufiq",
      //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //             ),
      //             const Text("017929562"),
      //           ],
      //         ),
      //       ),
      //     );
      //   }),
      // ),


      // //gridview.builder
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 3,//how many will be shown
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,

        ),

      itemCount: 20,//total item
        itemBuilder: (context, index){

          return Padding(
            padding: const EdgeInsets.all(8.0),

            child: Card(
              elevation: 10,

              //main part
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.white, size: 25,),
                  SizedBox(height: 10,),
                  Text("Send Money", style: TextStyle(color: Colors.white, fontSize: 15),),
                ],

              ),

              ),
            ),
          );

        },
      ),

    );

  }
}
