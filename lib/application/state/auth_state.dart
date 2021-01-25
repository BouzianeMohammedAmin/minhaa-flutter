import 'package:flutter/foundation.dart';
import 'package:minhaa/application/repositories/auth_repository.dart';

class AuthState {
  final AuthRepository _authRepository;
  AuthState(this._authRepository) : assert(_authRepository != null);

  Future singIn({
    @required String email,
    @required String password,
  }) async {
    await this._authRepository.singIn(email: email, password: password);
  }
}
