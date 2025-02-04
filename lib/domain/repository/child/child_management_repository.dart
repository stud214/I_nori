import 'package:play_tracker/data/models/child.dart';

abstract class ChildManagementRepository {
  Future<List<Child>> fetchChildren(); //아이 목록 조회
  Future<void> setChildren(List<Child> children);
  Future<void> addChild({required Child child}); // 아이 목록 추가
  Future<void> updateChild({required Child child}); // 아이 목록 수정
  Future<void> removeChild({required int id}); // 아이 목록 삭제
  Future<void> clearData();
}
