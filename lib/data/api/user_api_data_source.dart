import 'package:dio/dio.dart';
import 'package:mdf/data/api/user_api_service.dart';

import '../models/index.dart';

abstract class UserApiDataSource {
  Future<UserResponseApiDto> login(String phoneNumber);
}

class UserApiDataSourceImpl implements UserApiDataSource {
  final Dio dioClient;
  final UserApiService _userApiService;

  UserApiDataSourceImpl({required this.dioClient}) : _userApiService = UserApiService.create(dioClient);

  @override
  Future<UserResponseApiDto> login(String phoneNumber) {
    return _userApiService.login(phoneNumber);
  }
}
