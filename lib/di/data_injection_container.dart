import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:mdf_volunteers/data/api/user_api_data_source.dart';
import 'package:mdf_volunteers/data/constants/env_constants.dart';
import 'package:mdf_volunteers/data/repos/user_repository_impl.dart';

Future<void> initData() async {
  //Dio clients

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

  ///  ---------------------- ----------------------DataSources ---------------------- ---------------------- ----------------------
  Get.lazyPut<UserApiDataSource>(() => UserApiDataSourceImpl(dioClient: _apiClient));

  ///  -------------------------------------------- ---------------------- --------------------------------------------

  /// ---------------------- ----------------------Repositories ---------------------- ---------------------- ----------
  Get.lazyPut<UserRepository>(() => UserRepositoryImpl(userApiDataSource: Get.find<UserApiDataSource>()));

  ///  -------------------------------------------- ---------------------- --------------------------------------------
}
