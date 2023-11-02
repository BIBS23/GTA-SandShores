import 'package:cvmaker/Screens/basicinfo.dart';
import 'package:cvmaker/Utils/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataCard extends StatelessWidget {
  final String img;
  final Widget screen;
  final String title;
  const DataCard({super.key, required this.img, required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(screen);
      },
      child: Card(
          child: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromRGBO(108, 71, 238, 10),
              child: Image.asset(img)),
          SizedBox(height: 20),
          Text(title),
        ],
      )),
    );
  }
}
