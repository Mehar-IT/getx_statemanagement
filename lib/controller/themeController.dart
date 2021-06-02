import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool _theme = false.obs;
  RxBool get theme => _theme;

  void changeTheme() {
    _theme.value = !_theme.value;

    Get.isDarkMode
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
  }
}
