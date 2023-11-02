import 'package:cvmaker/Models/education.dart';
import 'package:cvmaker/Utils/textfield.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController college = TextEditingController();
    TextEditingController hss = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add education'),
        actions: [
          ElevatedButton(
              onPressed: () {
                Edu(college: college.text, hss: hss.text);

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
              title: 'College',
              label: 'Enter your college details',
              maxline: 1,
              controller: college,
            ),
            TxtField(
              title: 'Higher Secondary',
              label: 'Enter secondary education',
              maxline: 1,
              controller: hss,
            ),
            
          ],
        ),
      ),
    );
  }
}
