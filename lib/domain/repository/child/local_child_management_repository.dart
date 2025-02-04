import 'package:play_tracker/data/models/child.dart';
import 'child_management_repository.dart';

class LocalChildManagementRepository extends ChildManagementRepository {
  final List<Child> _accessibleChildren = [];

  @override
  Future<void> addChild({required Child child}) async {
    if (_accessibleChildren.any((c) => c.id == child.id)) {
      throw Exception("이미 등록된 자녀입니다: ${child.name}");
    }
    _accessibleChildren.add(child);
  }

  @override
  Future<List<Child>> fetchChildren() async {
    return Future.value(List.unmodifiable(_accessibleChildren)); // 변경 불가한 리스트 반환
  }

  @override
  Future<void> removeChild({required int id}) async {
    _accessibleChildren.removeWhere((child) => child.id == id);
  }

  @override
  Future<void> setChildren(List<Child> children) async {
    _accessibleChildren.clear();
    _accessibleChildren.addAll(children);
  }

  @override
  Future<void> updateChild({required Child child}) async {
    int index = _accessibleChildren.indexWhere((c) => c.id == child.id);
    if (index == -1) {
      throw Exception("해당 ID(${child.id})를 가진 자녀를 찾을 수 없습니다.");
    }
    _accessibleChildren[index] = child;
  }

  @override
  Future<void> clearData() async {
    _accessibleChildren.clear();
  }
}
