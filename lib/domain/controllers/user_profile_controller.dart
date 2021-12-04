import 'package:get/get.dart';

class UserProfileController extends GetxController {
  final _name = "".obs;
  final _email = "".obs;
  final _location = "".obs;

  String get name => _name.value;
  String get email => _email.value;
  String get location => _email.value;

  void setName(String name) {
    try {
      _name.value = name;
    } catch (e) {
      e.printInfo();
    }
  }

  void setEmail(String email) {
    try {
      _email.value = email;
    } catch (e) {
      e.printInfo();
    }
  }

  void setLocation(String location) {
    try {
      _location.value = location;
    } catch (e) {
      e.printInfo();
    }
  }
}
