import 'package:flutter/material.dart';
import 'package:project_june2/assignment/Main_maldvs.dart';
import 'package:project_june2/practice/registarion.dart';


class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {

  bool passvisibility=true;

  final uname=TextEditingController();
  final pwd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 60)),
            SizedBox(height: 100,width: 100),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                controller: uname,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your UserName",
                    labelText: "UserName",


                ),
              )
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: passvisibility,
                  obscuringCharacter: "*",
                  maxLength: 8,
                  controller: pwd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Password",
                    labelText: "password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(
                        passvisibility==true
                        ){
                          passvisibility=false;

                        }else
                          {
                            passvisibility=true;
                          }
                      });


                    }


                        , icon: Icon(passvisibility==true?
                            Icons.visibility_off_sharp:
                            Icons.visibility

                        ))




                  ),
                )
            ),
            ElevatedButton(

                onPressed: (){

                  var username=uname.text;
                  var password=pwd.text;
                  checkuser(username,password);

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                  ),
                  backgroundColor: Colors.blue[800],
                  minimumSize: Size(100,30)
                ),



                child: Text("Login")),
             // ElevatedButton(
             //
             //
             //      onPressed: ()
             //  {
             //    Navigator.of(context).push(MaterialPageRoute(
             //      builder: (context) => Register2()));
             //  }
             //    ,
             //      style: ElevatedButton.styleFrom(
             //        shape: RoundedRectangleBorder(
             //          borderRadius: BorderRadius.circular(20), // Adjust the value as needed
             //        ),
             //        backgroundColor: Colors.red[700],
             //        minimumSize: Size(100,40)
             //      ),
             //
             //
             //      child: Text("REGISTRATION")),




          ],
        ),
      ) ,

    );
  }

  void checkuser(String username, String password) {

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Main_Maldvies()));1
  }
}

