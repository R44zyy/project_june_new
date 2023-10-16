import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Main_maldvs.dart';
void main(){
  runApp(MaterialApp(home: MainPagee(),));
}

class MainPagee extends StatefulWidget {
  const MainPagee({super.key});

  @override
  State<MainPagee> createState() => _MainPageeState();
}

class _MainPageeState extends State<MainPagee> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.center,

          children: [
            Image.asset('assets/images/mald4.jpg',
              height:300,
              width: 300,

            ),
            SizedBox(height: 80,width: 100),
            ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tourism_ui1(),));
                // Add your buttNon's onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                ),
              ),
              child: Text('Log In'),
            ),
            SizedBox(width: 50,height: 20,),
            Text("-OR-"),
            SizedBox(width: 50,height: 30,),
            ElevatedButton(
              onPressed: () {
                // Add your button's onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  // Adjust the value as needed
                ),
                ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 8.0),
                  Text("Log In with facebook")
                ],
              ),
            ),
            SizedBox(width: 50,height: 10),
            ElevatedButton(
              onPressed: () {
                // Add your button's onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.10), // Adjust the value as needed
                ),backgroundColor: Colors.blueAccent,
              ),
                child: SizedBox(
                width:170,
                child:Row(
                  children: [
                    FaIcon(FontAwesomeIcons.twitter),
                    SizedBox(width:20),
                    Text("Log in with Twitter"),
                  ],
                )
            )

              ),
            SizedBox(width: 50,height: 10,),
            ElevatedButton(
              onPressed: () {
                // Add your button's onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                ),
                backgroundColor: Colors.redAccent,
              ),
              child: SizedBox(
                width:170,
                child:Row(
                  children: [
                    FaIcon(FontAwesomeIcons.google),
                    SizedBox(width:20),
                    Text("Log in with google "),
                  ],
                )
              )
            )

          ],
        ),
      ),
    );
  }
}
