import 'package:flutter/material.dart';

class m8c1Home extends StatelessWidget {
  const m8c1Home({super.key});

  @override
  Widget build(BuildContext context) {
    //to store values as text
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,

      //appbar
      appBar: AppBar(
        title: Text("M8_C1", style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text("Login System", style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),),
          ),

          SizedBox(height: 50,),
          //text field we can write here
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,),
            child: TextField(

              controller: phoneController,//controller

              keyboardType: TextInputType.number,
              //maxLines: 2,
              //obscureText: true,
              decoration: InputDecoration(

                labelText: "Phone Number",
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.call, size: 25,),
                ),
                prefixIconColor: Colors.blue,

                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.sms, size: 25,),
                ),
                suffixIconColor: Colors.orange,


                hintText: "Enter Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            //store the value
            //print(phoneController.text);

            if(phoneController.text.isEmpty){
              print("Enter your number");
            }
            else if(phoneController.text.length<11){
              print("Please enter a valid Number");
            }
            else{
              print("your Number is ${phoneController.text}");
            }
          }, child: Text("SUBMIT")),


          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){
            phoneController.clear();
          }, child: Text("Clear All")),







        ],
      ),

    );
  }
}
