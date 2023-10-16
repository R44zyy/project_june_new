import 'package:flutter/material.dart';
import 'package:project_june2/practice/loginn.dart';
import 'package:project_june2/practice/sqlFunction.dart';

void main(){
  runApp(MaterialApp(home: Register2(),));
}

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  final name  = TextEditingController();
  final email = TextEditingController();
  final pwd   = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text("Registration",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: name,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your Name",
            labelText: "Name",
            prefixIcon: Icon(Icons.person)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: email,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Please Enter Your Email ",
            labelText: "email",
            prefixIcon: Icon(Icons.email)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            controller: pwd,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "please Enter password",
            labelText: 'password',
            prefixIcon: Icon(Icons.lock),
            // suffixIcon:Icon(Icons.remove_red_eye_sharp)
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(

                onPressed: () {
                  Registration();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                  ),
                  backgroundColor: Colors.red[900]
                ),

                child: const Text("Register Here",style: TextStyle(fontWeight: FontWeight.bold),)),
          )
          ],
        ) ,
      ),
    );
  }
  void Registration() async{
    var id = await sqlFunction.createUser(name.text,email.text,pwd.text);
    print(id);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginn()));
  }
}
