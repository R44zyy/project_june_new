import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_june2/stateful%20login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility1 = true;
  bool nopasswordvisibility2 = true;

  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage 2"),
      ),
      body: Form(
        key: formkey, // this key is used to fetch the current state of form
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Username"),
                validator: (username) {
                  if (username!.isEmpty || !username.contains('@')) {
                    return 'field is empty/Invalid';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0, left: 18, right: 18),
              child: TextFormField(
                obscureText: nopasswordvisibility1,
                validator: (password) {
                  pass = password; // to store value from password textform field
                  if (password!.isEmpty || password.length < 6) {
                    return 'field is empty / invalid length';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (nopasswordvisibility1 == true) {
                              nopasswordvisibility1 = false;
                            } else {
                              nopasswordvisibility1 = true;
                            }
                          });
                        },
                        icon: Icon(nopasswordvisibility1 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0, left: 18, right: 18),
              child: TextFormField(
                obscureText: nopasswordvisibility2,
                validator: (confirmpassword) {
                  if (confirmpassword!.isEmpty || pass != confirmpassword) {
                    return 'field is empty / invalid length';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (nopasswordvisibility2 == true) {
                              nopasswordvisibility2 = false;
                            } else {
                              nopasswordvisibility2 = true;
                            }
                          });
                        },
                        icon: Icon(nopasswordvisibility2 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "ConfirmPassword"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login2()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
