import 'package:flutter/material.dart';
import 'package:test1/Module_08/Class_02/Gridviewapp.dart';
import 'package:test1/Module_08/Class_02/Listviewhome.dart';
import 'package:test1/Module_08/Class_02/Gridviewhome.dart';
import 'package:test1/Module_08/Class_02/listviewapp.dart';

class loginwithformHome extends StatefulWidget {

  const loginwithformHome({super.key,});

  @override
  State<loginwithformHome> createState() => _loginwithformHomeState();
}

class _loginwithformHomeState extends State<loginwithformHome> {
  //formkey
  final formkey = GlobalKey<FormState>();

  //controller
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login_Form",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.network(
              "https://cdn.pixabay.com/photo/2021/11/11/12/41/facebook-6786210_1280.png",
              height: 150,
              width: 300,
              //color: Colors.green,// colors can be changed as well
            ),

            SizedBox(height: 10),
            Image.asset(
              "asset/YT.jpg",
              height: 150,
              width: 500,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 20),

            Center(
              child: Text(
                "     Login with your \nphone and password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 25),

            //form
            Form(
              key: formkey,
              child: Column(
                children: [
                  //phone number
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      "Enter Phone Number",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      //controller
                      controller: phoneController,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter your phone Number!";
                        } else if (value.length <= 10) {
                          return "Please Enter 11 digit Phone Numner!";
                        } else {
                          return null;
                        }
                      },

                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        labelText: "Phone_number",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurpleAccent,
                        ),

                        prefixIcon: Icon(
                          Icons.phone,
                          size: 25,
                          color: Colors.red,
                        ),
                        suffixIcon: Icon(
                          Icons.messenger,
                          size: 25,
                          color: Colors.orange,
                        ),

                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  //password
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      "Enter Password",
                      style: TextStyle(fontSize: 20, color: Colors.redAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      //controler
                      controller: passwordController,

                      //hidden password
                      obscureText: true,

                      keyboardType: TextInputType.phone,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter your Password!";
                        } else if (value.length <= 5) {
                          return "Enter 6 digit password!";
                        } else {
                          return null;
                        }
                      },

                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurpleAccent,
                        ),

                        prefixIcon: Icon(
                          Icons.password,
                          size: 25,
                          color: Colors.red,
                        ),
                        suffixIcon: Icon(
                          Icons.emergency,
                          size: 25,
                          color: Colors.orange,
                        ),

                        hintText: "password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      //style
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),

                      onPressed: () {
                        // gives floating text that we assigned in validator
                        if (formkey.currentState!.validate()) {
                          //snack bar
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login Successful!")),
                          );


                          //routing must be homepage call not app
                          // Navigator.pushReplacement(//net page
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Listviewhome(),
                          //   ),
                          // );


                          //delay for snackbar show
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator
                                .pushReplacement( //next page but no back option
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Listviewhome(
                                      phoneNumber: phoneController.text,
                                      password: passwordController.text,),
                              ),

                            );
                          }
                          );
                        }
                        else{
                          //show a snackbar for invalid form
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Try Again!!!")),
                          );
                        }
                      },
                      child: Text("Submit"),
                    ),
                  ),

                  SizedBox(height: 10),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      onPressed: () {
                        phoneController.clear();
                        passwordController.clear();
                      },
                      child: Text("Clear All"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
