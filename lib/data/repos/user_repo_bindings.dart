import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

import '../api/distrincts_data_source.dart';
import '../api/errors/error_interceptor.dart';
import '../api/user_api_data_source.dart';
import '../constants/env_constants.dart';

class UserRepoBindings extends Bindings {
  Dio apiClient() {
    var optionsApi = BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
      baseUrl: EnvConstants.mainAPiUrl,
    );

    final _apiClient = Dio(optionsApi);

    _apiClient.interceptors.add(LogInterceptor(
        error: !kReleaseMode,
        request: !kReleaseMode,
        requestHeader: !kReleaseMode,
        requestBody: !kReleaseMode,
        responseBody: !kReleaseMode,
        responseHeader: !kReleaseMode));

    _apiClient.interceptors.add(ErrorInterceptor(_apiClient));
    return _apiClient;
  }

  @override
  void dependencies() {
    Get.lazyPut<UserApiDataSource>(() => UserApiDataSourceImpl(dioClient: apiClient()));
    Get.lazyPut<DistrictsDataSource>(() => DistrictsDataSourceImpl());

    Get.lazyPut<UserRepository>(() => UserRepositoryImpl(userApiDataSource: Get.find<UserApiDataSource>(), districtsDataSource: Get.find<DistrictsDataSource>()));
  }
}
