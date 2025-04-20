// auth_repository.dart
import '../entities/user.dart';

abstract class AuthRepository {
  Future<UserEntity> signUp(String email, String password);
  Future<UserEntity> signIn(String email, String password);
  Future<void> signOut();
}