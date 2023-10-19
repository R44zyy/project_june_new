import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_june2/storeges%20in%20flutter/hive%20using%20hive%20adapter/Screen/register_page.dart';

import '../Database/hivedb.dart';
import '../model/user_model.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(home: Login(),));

}
class Login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HiveLogin"),
        ),
        body: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(10),
    child: TextField(
    controller: email,
    decoration: const InputDecoration(
    hintText: 'UserName',
    border: OutlineInputBorder()),
    ),
    ),
    Padding(
       padding: const EdgeInsets.all(10),
         child: TextField(
         controller: pass,
        decoration: const InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'PassWord'),
         ),
       ),
            ElevatedButton(
    onPressed: () async{
            final users = await HiveDb.instance.getUser();
         checkUserExist(context,users);
        },
          child: const Text("Login")),
        TextButton(
                onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(
           builder: (context)=>RegisterHive()));
             },
              child: const Text("Not a User? Register Here!!!"))
    ]));
  }

  void checkUserExist(BuildContext context, List<User> users) {}}