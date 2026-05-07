
import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel extends HiveObject{
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String des;

  @HiveField(3)
  final String? deadline;

  @HiveField(4)
  final String? image;

  TodoModel({
    required this.id,
    required this.title,
    required this.des,
    this.deadline,
    this.image,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json, String docId) {
    return TodoModel(
      id: docId,
      title: json['title'] ?? '',
      des: json['des'] ?? '',
      deadline: json['deadline'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'des': des,
      'deadline': deadline,
      'image': image,
    };
  }
}


































// class TodoModel {
//   final String id;
//   final String title;
//   final String des;
//   final String? deadline;
//   final String? image;
//
//   TodoModel({
//     required this.id,
//     required this.title,
//     required this.des,
//     this.deadline,
//     this.image});
//
//
//
//   factory TodoModel.fromJson(Map<String,dynamic>json,String docId){
//     return TodoModel(
//         id: docId,
//         title: json['title']??'',
//         des: json['des']??'',
//         deadline: json['deadline']??'',
//         image: json['image']??''
//     );
//   }
//
//   Map<String,dynamic>toJson(){
//     return{
//       'title': title,
//       'des': des,
//       'deadline': deadline,
//       'image': image,
//     };
//   }
// }