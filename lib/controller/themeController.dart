import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxInt _theme = 1.obs;
  RxInt get theme => _theme;

  void changeTheme() {
    if (_theme.value == 1) {
      Get.changeThemeMode(ThemeMode.system);
    } else if (_theme.value == 2) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}
