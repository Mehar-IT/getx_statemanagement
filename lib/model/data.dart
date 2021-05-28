class Student {
  List<Data> student;
  Student({this.student});
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        student:
            List.from(json['student']).map((e) => Data.fromJson(e)).toList());
  }
}

class Data {
  int id;
  String name;
  String dept;
  String uni;
  Data({
    this.id,
    this.name,
    this.dept,
    this.uni,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        dept: json['dept'],
        id: json['roll_no'],
        name: json['name'],
        uni: json['uni']);
  }
}
