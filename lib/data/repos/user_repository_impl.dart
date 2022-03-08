import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/constants/env_constants.dart';
import 'package:mdf/data/models/index.dart';
import 'package:mdf/data/storage/storage_extentions.dart';
import 'package:mdf/data/storage/tickets_storage.dart';

import '../api/distrincts_data_source.dart';
import '../api/user_api_data_source.dart';
import '../models/failure/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, dynamic>> login(String firstName, String lastName,
      String email, String phoneNumber);

  Future<Either<Failure, List<Distrinct>>> getDistricts();

  Future<Either<Failure, dynamic>> sendFirebaseToken(String token);

  Future<Either<Failure, List<HelpNotification>>> getNotifications();

  Future<Either<Failure, ActivationResponse>> confirmCode(String code,
      String phoneNumber);

  Future<Either<Failure, dynamic>> updateProfile();

  Future<Either<Failure, dynamic>> logout();

  Future<Either<Failure, dynamic>> completeProfile(List<String> locations,
      List<String> services, String details);

  Future<Either<Failure, dynamic>> syncTickedLimitedData(String id);
}

class UserRepositoryImpl extends UserRepository {
  final UserApiDataSource userApiDataSource;
  final DistrictsDataSource districtsDataSource;
  final TicketsStorage ticketsStorage;

  UserRepositoryImpl({required this.userApiDataSource,
    required this.districtsDataSource,
    required this.ticketsStorage});

  @override
  Future<Either<Failure, dynamic>> login(String firstName, String lastName,
      String email, String phoneNumber) async {
    try {
      RegisterBody body = RegisterBody(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phoneNumber,
          token: EnvConstants.token);

      final response = await userApiDataSource.login(body);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, List<Distrinct>>> getDistricts() async {
    try {
      final districts = await districtsDataSource.getDistricts();
      return Right(districts);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, dynamic>> sendFirebaseToken(String token) async {
    try {
      final response = await userApiDataSource.sendFirebaseToken(token);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, List<HelpNotification>>> getNotifications() async {
    try {
      final response = await userApiDataSource.getNotifications();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, ActivationResponse>> confirmCode(String code,
      String phoneNumber) async {
    try {
      var body = ActivationBody(
          token: EnvConstants.token,
          activationCode: code,
          phoneNumber: phoneNumber);
      final response = await userApiDataSource.confirmCode(body);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, dynamic>> updateProfile() async {
    try {
      //var result = await userApiDataSource.updateProfile();
      return Right([]);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, dynamic>> logout() async {
    try {
      var result = await userApiDataSource.logout();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, dynamic>> completeProfile(List<String> locations,
      List<String> services, String details) async {
    GetStorage box = GetStorage();
    var phoneNumber = box.getPhoneNumber();
    var password = box.getPassword();

    CompleteProfileBody body = CompleteProfileBody(
        token: EnvConstants.token,
        locations: locations,
        services: services,
        details: details,
        isActive: true,
        phoneNumber: phoneNumber,
        password: password,
        pushToken: null);
    try {
      var result = await userApiDataSource.updateProfile(body);

      GetStorage box = GetStorage();
      box.putServices(services);
      box.putLocations(locations);
      box.putDetails(details);
      box.putIsAvailable(true);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }

  @override
  Future<Either<Failure, dynamic>> syncTickedLimitedData(String id) async {
    try {
      GetStorage box = GetStorage();
      TicketRequestBody body = TicketRequestBody(token: EnvConstants.token,
          password: box.getPassword(),
          phoneNumber: box.getPhoneNumber(),
          giverPublicCodeID: id);

      var response = await userApiDataSource.getLimitedTicketData(body);
      ticketsStorage.addTicket(response);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorObject: e));
    }
  }
}
