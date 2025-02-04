import 'child.dart';

enum RelationShip { mom, father, grandFa, grandMa, etc }

class Viewer {
  final String id; //아이디
  final String name; // 이름
  final String birthDate; // YYYY-MM-DD 형식
  final String? imageUrl; // 이미지
  final List<Child>? accessibleChildren; //열람 가능한 아이 목록
  final RelationShip relationship; // 아이 와의 관계
  Viewer({
    required this.id,
    required this.name,
    required this.birthDate,
    this.imageUrl,
    this.accessibleChildren,
    required this.relationship,
  });
}
