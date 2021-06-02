import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/controller/themeController.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: DrawerHeader(
            child: GetX<ThemeController>(
                init: ThemeController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Text(
                        'Theme Modes',
                        textScaleFactor: 1.3,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('System Mode'),
                            Radio(
                                value: 1,
                                groupValue: controller.theme.value,
                                onChanged: (value) {
                                  controller.theme.value = value;
                                  controller.changeTheme();
                                })
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Light Mode'),
                            Radio(
                                value: 2,
                                groupValue: controller.theme.value,
                                onChanged: (value) {
                                  controller.theme.value = value;
                                  controller.changeTheme();
                                })
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Dark Mode'),
                            Radio(
                                value: 3,
                                groupValue: controller.theme.value,
                                onChanged: (value) {
                                  controller.theme.value = value;
                                  controller.changeTheme();
                                })
                          ])
                    ],
                  );
                })));
  }
}
