import 'package:flutter/material.dart';
import 'package:test1/controller/dataController.dart';
import 'package:get/get.dart';
import 'detailScreen.dart';

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
