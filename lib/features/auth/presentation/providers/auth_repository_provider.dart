import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../data/auth_remote_data_source.dart';
import '../../data/auth_repository_impl.dart';

final firebaseAuthProvider = Provider((_) => FirebaseAuth.instance);
final authRemoteDataSourceProvider = Provider(
  (ref) => AuthRemoteDataSource(ref.read(firebaseAuthProvider)),
);
final authRepositoryProvider = Provider(
  (ref) => AuthRepositoryImpl(ref.read(authRemoteDataSourceProvider)),
);