import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/controller/dataController.dart';

import 'pages/detailScreen.dart';

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

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<DataController>(
        init: DataController(),
        builder: (obj) => ListView.builder(
              itemCount: obj.student.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {
                    Get.to(() => StudentDetail(
                          student: obj.student[index],
                        ));
                  },
                  leading: Text('${obj.student[index].id}'),
                  title: Text('${obj.student[index].name}'),
                  subtitle: Text(
                      '${obj.student[index].dept},${obj.student[index].uni}'),
                ),
              ),
            ));
  }
}
