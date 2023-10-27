import 'package:cvmaker/data_controller.dart';
import 'package:cvmaker/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() { 
    Get.put(DataController());

  
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      )
    );
  }
}

