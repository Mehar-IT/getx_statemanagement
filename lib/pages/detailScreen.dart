import 'package:flutter/material.dart';
import 'package:test1/model/data.dart';

class StudentDetail extends StatelessWidget {
  final Data student;
  const StudentDetail({key, this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Detail'),
      ),
      body: Center(
          child: Card(
              child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.cyan, Colors.teal])),
        height: 350,
        width: 300,
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.cyan, Colors.indigo]),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  'Roll# ${student.id}',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 30),
            Text(
              '${student.name}',
              textScaleFactor: 2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              '${student.dept}',
              textScaleFactor: 2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              '${student.uni}',
              textScaleFactor: 2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ))),
    );
  }
}