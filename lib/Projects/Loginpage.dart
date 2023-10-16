import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: LoginPage(),));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: Container(
             height: 800,
             width: 800,
            child: Image.asset("assets/images/sscc.png"),
          ),
        ),
      ),
    );
  }
}
