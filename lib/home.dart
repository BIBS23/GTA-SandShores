import 'package:cvmaker/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController inpcontroller1 = TextEditingController();
  final DataController data = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: inpcontroller1,
        ),
        TextButton(
            onPressed: () {
              data.generatePDF(inpcontroller1.text);
            },
            child: Text('click me'))
      ],
    );
  }
}
