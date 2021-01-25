import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:minhaa/application/minhaa_api.dart';

abstract class AuthRepository {
  Future singIn({
    @required String email,
    @required String password,
  });
}

class AuthRepositoryImp implements AuthRepository {
  @override
  Future singIn({String email, String password}) async {
    Response response =await MinhaaApi.dio
        .post("/api/auth/login", data: {"email": email, "password": password});
    print(response);
/**
 * !abigale91@example.org
 * !password
 */
  }
}
