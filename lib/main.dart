import 'package:cvmaker/Controller/data_controller.dart';
import 'package:cvmaker/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() { 
    Get.put(DataController());

  
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('CV Maker'),),
        body: HomeScreen(),
      )
    );
  }
}

