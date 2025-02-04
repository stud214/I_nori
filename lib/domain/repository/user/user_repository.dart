import 'package:play_tracker/data/models/user.dart';

abstract class UserRepository {
  Future<void> registerUser(User user);
  Future<User?> loginUser({required String email, required String password});
  Future<void> logoutUser();
  Future<User?> fetchUser(String userId);
  Future<void> updateUser(User user);
  Future<List<User>> fetchAllUsers();
  Future<void> deleteUser(String userId);
  Future<List<User>> searchUser(String query);
  Future<void> changePassword(String userId, String newPassword);
  Future<void> shareChildAccess(String fromUserId, String toUserId, String childId);
}
