import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase db.dart';
import 'home_fr.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBCMj4g6QPcpMAZTAAVZIoqwJlaiFJj1tI",
        appId:"1:424033071901:android:28785262220ca4a499a7f4" ,
        messagingSenderId: "",
        projectId: "myprojects12-96313")
  );
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? Login_fire() : HomeFire()));
}

class Login_fire extends StatefulWidget {
  @override
  State<Login_fire> createState() => _Login_fireState();
}

class _Login_fireState extends State<Login_fire> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'UserName'),
              controller: username_controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'PassWord'),
              controller: password_controller,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String email = username_controller.text.trim();
                String pass = password_controller.text.trim();

                FirebaseHelper()
                    .login(email: email, password: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text('Login Here')),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {}, child: const Text('Register Here'))
        ],
      ),
    );
  }
}