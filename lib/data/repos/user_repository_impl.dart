import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdf/data/api/distrincts_data_source.dart';
import 'package:mdf/data/models/index.dart';

import '../api/user_api_data_source.dart';
import '../models/failure/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserApiDto>> login(phoneNumber);
  Future<Either<Failure, List<Distrinct>>> getDistricts();
}

class UserRepositoryImpl extends UserRepository {
  final UserApiDataSource userApiDataSource;
  final DistrictsDataSource districtsDataSource;

  UserRepositoryImpl({required this.userApiDataSource, required this.districtsDataSource});

  @override
  Future<Either<Failure, UserApiDto>> login(phoneNumber) async {
    try {
      final users = await userApiDataSource.login(phoneNumber);
      return Right(users.data.first);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response?.data));
      }
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, List<Distrinct>>> getDistricts() async {
     try {
       final districts = await districtsDataSource.getDistricts();
       return Right(districts);
     }catch (e){
       return Left(ServerFailure(errorObject: e));
     }
  }

}
