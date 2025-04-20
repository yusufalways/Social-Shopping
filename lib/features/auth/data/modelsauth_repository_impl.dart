// auth_repository_impl.dart
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/user_model.dart';
import 'auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;
  AuthRepositoryImpl(this._remote);

  @override
  Future<UserEntity> signUp(String email, String password) async {
    final cred = await _remote.signUp(email, password);
    return UserModel.fromFirebaseUser(cred.user!).toEntity();
  }

  @override
  Future<UserEntity> signIn(String email, String password) async {
    final cred = await _remote.signIn(email, password);
    return UserModel.fromFirebaseUser(cred.user!).toEntity();
  }

  @override
  Future<void> signOut() => _remote.signOut();
}