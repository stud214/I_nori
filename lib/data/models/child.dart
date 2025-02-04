import 'dart:convert';

import 'package:crypto/crypto.dart';

class Child {
  final String id; //아이디
  final String creatorId; //등록자 id
  final String name; // 이름
  final String birthDate; // YYYY-MM-DD 형식
  final String? imageUrl; // 이미지

  Child({
    required this.creatorId,
    required this.name,
    required this.birthDate,
    this.imageUrl,
  }) : id = _generateId(creatorId, name, birthDate);

  // 부모ID + 이름 + 생년월일 조합을 해싱하여 고유 ID 생성
  static String _generateId(String parentId, String name, String birthDate) {
    var bytes = utf8.encode("$parentId$name$birthDate"); // 문자열 → 바이트 변환
    return sha256.convert(bytes).toString(); // SHA-256 해싱
  }
}



