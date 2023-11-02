import 'package:cvmaker/Controller/data_controller.dart';
import 'package:cvmaker/Models/info.dart';
import 'package:cvmaker/Utils/data.dart';
import 'package:cvmaker/Utils/data_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new resume'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: CardImage.length,
                itemBuilder: (context, index) {
                 
                  return DataCard(
                    img: CardImage[index],
                    title: CardTitle[index],
                    screen: screens[index],
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                BasicInfo basic = BasicInfo();
                 DataController data = Get.put(DataController());
                data.generatePDF(basic.name, basic.address, basic.dob,
                    basic.address, basic.contact, basic.email, basic.objective,basic.skills);
                Navigator.pop(context);
              },
              child: Text('Save'))
        ],
      ),
    );
  }
}
