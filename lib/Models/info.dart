import 'package:get_storage/get_storage.dart';

class BasicInfo {
  final box = GetStorage();
  String name;
  String dob;
  String address;
  String contact;
  String objective;
  String gender;
  String email;
  String skills;

  void setBasicInfo() {
    box.write(
      'name',
      name,
    );
  }
}
