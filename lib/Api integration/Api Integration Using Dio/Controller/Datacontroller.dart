import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:project_june2/Api%20integration/Api%20Integration%20Using%20Dio/Service/dio_services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../Model/Datamodel.dart';

class DataController extends GetxController{
  RxList<DataModel> datas=RxList();
  RxBool isLoading = true.obs;
  RxBool isListatdown=false.obs;
  RxBool isnetwork=true.obs;

  var url="https://jsonplaceholder.typicode.com/posts";
  var itemController= ItemScrollController();

  isInternetConnected() async{
    isnetwork.value= await InternetConnectionChecker().hasConnection;
  }
  fetchData()async{
    isInternetConnected();
    isLoading.value=true;
    var response=await Dioservice().getData(url);
    if(response.statusCode==200){
      response.data.forEach((element){
        datas.add(DataModel.fromJson(element));
      });
      isLoading.value=false;
    }
  }
  ScrollDown(){
    itemController.scrollTo(index: datas.length, duration: Duration(seconds: 3),
    curve: Curves.easeInBack);
    isListatdown.value=true;

  }
  ScrollUp(){
    itemController.scrollTo(index: 0, duration: Duration(seconds: 2),
    curve:  Curves.easeInCirc);
    isListatdown.value=false;
  }

@override
  void onInit() {
    fetchData();
    isInternetConnected();
     super.onInit();
  }
}