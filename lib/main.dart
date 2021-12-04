import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/controllers/user_profile_controller.dart';
import 'ui/app.dart';

void main() {
  Get.put(UserProfileController());
  runApp(const App());
}
