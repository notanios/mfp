import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdf_volunteers/data/models/index.dart';

import '../api/user_api_data_source.dart';
import '../models/failure/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserApiDto>> login(phoneNumber);
}

class UserRepositoryImpl extends UserRepository {
  final UserApiDataSource userApiDataSource;

  UserRepositoryImpl({required this.userApiDataSource});

  @override
  Future<Either<Failure, UserApiDto>> login(phoneNumber) async {
    try {
      final users = await userApiDataSource.login(phoneNumber);
      return Right(users.data.first);
    } catch (e) {
      if (e is DioError)
        return Left(ServerFailure(errorObject: e.response?.data));
      return Left(ServerFailure(errorObject: e));
    }
  }

}
