import 'package:flutter/material.dart';

class todohome extends StatefulWidget {
  const todohome({super.key});

  @override
  State<todohome> createState() => _todohomeState();
}

class _todohomeState extends State<todohome> {
  //controller
  TextEditingController taskcontroller = TextEditingController();

  //list to store
  List<String> tasks = [];

  //datastore function with controller
  void addtask() {
    if (taskcontroller.text.isNotEmpty) {
      setState(() {
        tasks.add(taskcontroller.text); //add
        taskcontroller.clear(); //clear
      });
    } //if
  } //add function

  void deletetask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  } //delete function

  void donetask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  } //donetask

  void alldone() {
    setState(() {
      tasks.clear();
    });
  } //alldone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "To-Do List",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Icon(Icons.search, size: 25, color: Colors.white),
                  ),
                  Text(
                    "Search Task",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),

            Text(
              "My Tasks",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,

                //decoration: TextDecoration.underline,//underline
                decorationColor: Colors.blue,

                //decorationStyle: TextDecorationStyle.double,
              ),
            ),

            SizedBox(height: 10),
            //listviewbuilder
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length, //itemcount via list

                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(tasks[index]), //title show by task
                      //leading
                      leading: IconButton(
                        onPressed: () => donetask(index),
                        icon: Icon(Icons.done, color: Colors.blue, size: 25),
                      ),

                      //trailing
                      trailing: IconButton(
                        onPressed: () => deletetask(index),
                        icon: Icon(Icons.delete, size: 25, color: Colors.red),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () => alldone(),
                child: Text("All Done!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),

            //
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.task),

                      label: Text(
                        "Enter your Task",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),

                      //text field border color and modification
                      enabledBorder: OutlineInputBorder(
                        // When not focused
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),

                      focusedBorder: OutlineInputBorder(
                        // When focused
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),

                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(width: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: addtask,
                  child: Text(
                    "Add",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
