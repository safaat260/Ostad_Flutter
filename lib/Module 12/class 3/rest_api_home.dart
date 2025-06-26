import 'dart:convert';
import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class rest_api_home extends StatefulWidget {
  const rest_api_home({super.key});

  @override
  State<rest_api_home> createState() => _rest_api_homeState();
}

class _rest_api_homeState extends State<rest_api_home> {
  List users =[];
  bool isloading = false;

  Future<void> fetchUsers() async{
    setState(() {
      isloading = true;
    });
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    headers: {
      "Accept" : "application/json"
        }
    );
    setState(() {
      isloading = false;
    });
    log(response.body);

    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }

    else{
      throw Exception("Something Wrong");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users API"), backgroundColor: Colors.orange),

      body: isloading ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text(user["name"][0], style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            title: Text(user["name"]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text('UserName: ${user['username']}',style: TextStyle(color: Colors.grey),),
                Text('Email: ${user['email']}',style: TextStyle(color: Colors.grey),),
                Text('phone ${user['phone']}',style: TextStyle(color: Colors.grey),),
                Text('Website ${user['website']}',style: TextStyle(color: Colors.grey),),
                Text('Address ${user['address']['street']} , ${user['address']['city']}',style: TextStyle(color: Colors.grey),),
              ],
            ),
          );
        },
      ),
    );
  }
}
