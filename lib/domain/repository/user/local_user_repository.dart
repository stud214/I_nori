import 'package:play_tracker/data/models/user.dart';
import 'package:play_tracker/domain/repository/user/user_repository.dart';

class LocalUserRepository extends UserRepository {
  final List<User> _users = [];
  User? _loggedInUser; // ✅ 현재 로그인된 사용자

  @override
  Future<void> registerUser(User user) async {
    if (_users.any((u) => u.email == user.email)) {
      throw Exception("이미 존재하는 이메일입니다.");
    }
    _users.add(user);
  }

  @override
  Future<User?> loginUser(
      {required String email, required String password}) async {
    List<User> foundUsers = _users
        .where((u) => u.email == email && u.password == password)
        .toList();

    if (foundUsers.isNotEmpty) {
      _loggedInUser = foundUsers.first; // ✅ 로그인 상태 저장
      return _loggedInUser;
    }

    return null;
  }

  @override
  Future<void> logoutUser() async {
    _loggedInUser = null; // ✅ 로그아웃 시 초기화
  }

  User? getLoggedInUser() {
    return _loggedInUser; // ✅ 현재 로그인된 사용자 반환
  }

  bool isLoggedIn() {
    return _loggedInUser != null; // ✅ 로그인 상태 확인
  }

  @override
  Future<User?> fetchUser(String userId) async {
    List<User> foundUsers = _users.where((u) => u.id == userId).toList();
    return foundUsers.isNotEmpty ? foundUsers.first : null;
  }

  @override
  Future<void> updateUser(User user) async {
    int index = _users.indexWhere((u) => u.id == user.id);
    if (index == -1) {
      throw Exception("사용자를 찾을 수 없습니다.");
    }
    _users[index] = user;
  }

  @override
  Future<List<User>> fetchAllUsers() async {
    return Future.value(List.unmodifiable(_users));
  }

  @override
  Future<void> deleteUser(String userId) async {
    _users.removeWhere((u) => u.id == userId);
  }

  @override
  Future<void> changePassword(String userId, String newPassword) async {
    List<User> foundUsers = _users.where((u) => u.id == userId).toList();

    if (foundUsers.isEmpty) {
      throw Exception("사용자를 찾을 수 없습니다.");
    }

    foundUsers.first.password = newPassword;
  }

  @override
  Future<List<User>> searchUser(String query) async {
    return _users
        .where((u) => u.name.contains(query) || u.email.contains(query))
        .toList();
  }

  @override
  Future<void> shareChildAccess(
      String fromUserId, String toUserId, String childId) async {
    print("✅ $fromUserId 가 $toUserId 에게 자녀($childId)의 접근 권한을 공유했습니다.");
  }
}
