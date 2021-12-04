import 'package:get/get.dart';

class LoginController extends GetxController {
  final _email = "".obs;
  final _password = "".obs;

  String get email => _email.value;
  String get password => _password.value;

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
