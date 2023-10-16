import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
void main(){
  runApp(MaterialApp(home:pr_example()));
}

class pr_example extends StatefulWidget {
  const pr_example({super.key});

  @override
  State<pr_example> createState() => _pr_exampleState();
}

class _pr_exampleState extends State<pr_example> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: reqeustCamerapermission,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
                    child: Text("requst Camera permission",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                ElevatedButton(onPressed: reqeustMultipermission,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
                    child: Text("requst Multiple permission",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                ElevatedButton(onPressed: withoutpermission,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green[800]),
                    child: Text("requst without opensettings permission",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),


              ],
            ),
          ),
        )
    );
  }

  void  reqeustCamerapermission() async {
    var status=await Permission.camera.status;
    if(status.isGranted){
      print('permission is granted');
    }else if(status.isDenied){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Permission Denied')));
      if(await Permission.camera.request().isGranted){
        print('Permission was granted');
      }
    }
  }



  void reqeustMultipermission() async{
    Map<Permission,PermissionStatus> status=await[
      Permission.storage,
      Permission.location,
      Permission.phone,
      Permission.photos
    ].request();
  }


  void withoutpermission() async{
    openAppSettings();
  }
}


