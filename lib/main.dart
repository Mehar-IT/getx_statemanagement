import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/model/controller/dataController.dart';

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
                    Get.snackbar('Hi',
                        'Student ${obj.student[index].id} ${obj.student[index].name} is selected',
                        barBlur: 100,
                        margin: EdgeInsets.all(10),
                        snackPosition: SnackPosition.BOTTOM);
                    // Get.defaultDialog(
                    //   title: 'This is dialog box ${obj.student[index].id}',

                    // );
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