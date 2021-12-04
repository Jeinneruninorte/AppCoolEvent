import 'package:get/get.dart';

class RegisterController extends GetxController {
  final _name = "".obs;
  final _email = "".obs;
  final _password = "".obs;

  String get name => _name.value;
  String get email => _email.value;
  String get password => _password.value;

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

  void setPassword(String password) {
    try {
      _password.value = password;
    } catch (e) {
      e.printInfo();
    }
  }
}
