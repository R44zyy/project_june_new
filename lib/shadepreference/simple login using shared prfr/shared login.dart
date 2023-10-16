import 'package:flutter/material.dart';
import 'package:project_june2/shadepreference/simple%20login%20using%20shared%20prfr/shared%20home.dart';
// import 'package:project_june2/shadepreference/simple%20login%20using%20shared%20prfr/shared%20home.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: LoginShared(),));
}

class LoginShared extends StatefulWidget {
  const LoginShared({super.key});

  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;


  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }
  void check_if_user_already_login()  async{
    preferences=await SharedPreferences.getInstance();
    newuser=preferences.getBool("newuser")?? true;

    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> sharedHome()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login Page ",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                suffixIcon: Icon(Icons.mail_lock_outlined),
                hintText: "Email",
                label: Text("Email")
              ),
              controller: email,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: "password",
                helperText: "password must contain 6 characters",
                labelText: "password"
              ),
              controller: pwd,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                onPressed: () async{
              preferences=await SharedPreferences.getInstance();


              String username=email.text;
              String pass=pwd.text;

              if (username !=""&& pass !=""){
                preferences.setString('username', username);
                preferences.setString("pwd", pass);
                preferences.setBool("newuser", false);
                Navigator.push(context,MaterialPageRoute(builder: (context) =>sharedHome()));

              }
              email.text="";
              pwd.text="";
            },
                child: Text("Login here"),),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),

                onPressed: (){}, child: Text("singup")),
            Text("please sign or logout",style: TextStyle(color:Colors.black),)

          ],
        ),
      ),
    );
  }


}

