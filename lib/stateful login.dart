import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage 2"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Username"),

              validator:(username){
                if(username!.isEmpty || !username.contains('@')){
                  return 'field is empty/Invalid';
                }else{
                  return null;
                }
              } ,
            ),

            TextFormField(
              validator: (password){
                if(password!.isEmpty || password.length < 6){
                  return 'field is empty / invalid length';
                }else{
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Password"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            TextButton(
                onPressed: () {}, child: Text("Not a User!!! Register Here!!"))
          ],
        ),
      ),
    );
  }
}
