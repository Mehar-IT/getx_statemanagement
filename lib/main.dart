import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/listscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      ),
      body: MyList(),
    );
  }
}
