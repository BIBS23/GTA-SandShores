import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final String title;
  final String label;
  final int maxline;
  final TextEditingController controller;

  const TxtField(
      {super.key,
      required this.title,
      required this.label,
      required this.controller, required this.maxline});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Column(
          children: [
            Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
            TextField(
              controller: controller,
              maxLines: maxline,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: label,
                  hintStyle: TextStyle(color: Color.fromARGB(100, 0, 0, 0))),
            )
          ],
        ),
      ),
    );
  }
}
