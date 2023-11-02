import 'package:cvmaker/Controller/data_controller.dart';
import 'package:cvmaker/Models/info.dart';
import 'package:cvmaker/Utils/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class BasicInfoScreen extends StatelessWidget {
  const BasicInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController gender = TextEditingController();
    TextEditingController dob = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController contact = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController objective = TextEditingController();
    TextEditingController skills = TextEditingController();
    DataController data = Get.put(DataController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Info'),
        actions: [
          ElevatedButton(
              onPressed: () {
               
                Navigator.pop(context);

                // data.generatePDF(basic.name, basic.address, basic.dob,
                //     basic.address, basic.contact, basic.email, basic.objective);
              },
              child: Text('Save'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TxtField(
              title: 'Name',
              label: 'Enter your name',
              maxline: 1,
              controller: name,
            ),
            TxtField(
              title: 'Gender',
              label: 'Male/Female',
              maxline: 1,
              controller: gender,
            ),
            TxtField(
                title: 'Date of birth',
                label: 'ex:22-01-2002',
                maxline: 1,
                controller: dob),
            TxtField(
              title: 'Adress',
              label: 'Enter your address',
              maxline: 5,
              controller: address,
            ),
            TxtField(
              title: 'Contact',
              label: 'Enter contact details',
              maxline: 1,
              controller: contact,
            ),
            TxtField(
              title: 'Email',
              label: 'Enter your email',
              maxline: 1,
              controller: email,
            ),
            TxtField(
              title: 'Objective',
              label: 'Enter you Objective',
              maxline: 5,
              controller: objective,
            ),
            TxtField(
              title: 'Skills',
              label: 'Enter you skills',
              maxline: 5,
              controller: skills,
            )
          ],
        ),
      ),
    );
  }
}
