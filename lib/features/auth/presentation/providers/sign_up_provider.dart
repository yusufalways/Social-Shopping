// sign_up_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/sign_up.dart';

final signUpUseCaseProvider = Provider(
  (ref) => SignUp(ref.read(authRepositoryProvider)),
);
final signUpControllerProvider = StateNotifierProvider<SignUpController, AsyncValue<void>>(
  (ref) => SignUpController(ref.read(signUpUseCaseProvider)),
);