import 'package:uuid/uuid.dart';

class User {
  final String id; //아이디
  final String name; // 이름
  final String birthDate; // YYYY-MM-DD 형식
  final String email;
  String password;
  final String? imageUrl; // 이미지

  User({
    required this.name,
    required this.birthDate,
    required this.email,
    required this.password,
    this.imageUrl,
  }): id = const Uuid().v4();
}