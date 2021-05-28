import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test1/model/data.dart';

class DataController extends GetxController {
  RxList<Data> _student = <Data>[].obs;
  RxList<Data> get student => _student;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    var data = await rootBundle.loadString('assets/data.json');
    var decodedData = jsonDecode(data);
    Student student = Student.fromJson(decodedData);
    _student.value = student.student;
  }
}
