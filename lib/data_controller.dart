import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataController extends GetxController {
  final pdfGeneratorAPIUrl =
      'https://us1.pdfgeneratorapi.com/api/v4/documents/generate';
  final authToken =
      'Bearer a19bd81d89a21bd8aef8e9732a63fc4b66d9f3d33fed2370ecf8f74e572fdc5a';

  Future<void> generatePDF(String name) async {
    try {
      final headers = {
        'Authorization': authToken,
        'Content-Type': 'application/json',
      };

      final userInput = {
        "template": {
          "id": "832478", // Replace with your actual template ID
          "data": {
            "Name": name,
          },
        },
        "format": "pdf",
        "output": "url",
        "name": "Certificate Example",
      };

      final response = await http.post(
        Uri.parse(pdfGeneratorAPIUrl),
        headers: headers,
        body: jsonEncode(userInput),
      );

      if (response.statusCode == 200) {
        final pdfUrl = response.body;
        print('PDF URL: $pdfUrl');
        // Handle the URL as needed (e.g., display it or download the PDF).
      } else {
        print('Failed to generate PDF: ${response.statusCode}');
        print('Response: ${response.body}');
        // Handle the error as needed.
      }
    } catch (e) {
      print('Error: $e');
      // Handle exceptions as needed.
    }
  }
}
