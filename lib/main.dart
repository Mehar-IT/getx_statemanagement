import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/controller/themeController.dart';
import 'package:test1/widgets/theme.dart';
import 'pages/listscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      home: MyData(),
    );
  }
}

class MyData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx State Management'),
        actions: [
          GetX<ThemeController>(
              init: ThemeController(),
              builder: (controller) => Switch(
                  value: controller.theme.value,
                  onChanged: (bool value) {
                    controller.changeTheme();
                  }))
        ],
      ),
      body: MyList(),
    );
  }
}
