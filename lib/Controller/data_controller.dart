import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataController extends GetxController {
  final pdfGeneratorAPIUrl =
      'https://us1.pdfgeneratorapi.com/api/v4/documents/generate';
  final authToken =
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI3NTc1YjI5ZmIxY2E0MjNlNzVhNGQ3ODAzYzI5N2VjYjRkNTlkNmY2NWNlNjRiNjdjNWMxOGFjMjEzOWI2Y2M5Iiwic3ViIjoiMTEyMjAuYmpAZ21haWwuY29tIiwiZXhwIjoxNjk4NTA4OTU0fQ.YWGot3kATggQJ_sP4xyX0ksLLuDmWDxFYS9gtV2yw7o';

  Future<void> generatePDF(String name,String gender,String dob,String address,String contact,String email,String objective,String skills) async {
    try {
      final headers = {
        'Authorization': authToken,
        'Content-Type': 'application/json',
      };

      final userInput = {
        "template": {
          "id": "832478", // Use the correct template ID here
          "data": {
            "name": name,
            "address":address,
            "gender":gender,
            "dob":dob,
            "contact":contact,
            "object":objective,
            "email":email,
            "skills":skills
          },
        },
        "format": "pdf",
        "output": "url",
        "name": "bingo",
      };

      final response = await http.post(
        Uri.parse(pdfGeneratorAPIUrl),
        headers: headers,
        body: jsonEncode(userInput),
      );

      if (response.statusCode == 201) {
  final responseBody = jsonDecode(response.body);
  final pdfUrl = responseBody['response'];

  // Handle the URL as needed (e.g., display it or download the PDF).
  print('PDF URL: $pdfUrl');
  // You can use this URL to access the generated PDF.
} else {
  // Handle errors if the response status code is not 201.
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
