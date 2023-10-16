import 'package:flutter/material.dart';
import 'package:project_june2/Firebase_Exmple%20pass%20emil%20auth/firebase%20db.dart';

import 'Login_fr.dart';

class HomeFire extends StatelessWidget {
  const HomeFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseHelper().logOut()..then((result) =>
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login_fire())));
          }
        , child: Text("Logout"))
      ),
    );
  }
}