import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/index.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class UserApiService {
  static UserApiService create(Dio client) {
    return _UserApiService(client);
  }

  @GET('/v1/passenger')
  Future<UserResponseApiDto> login(@Query('phone_number')String phoneNumber);

  @POST("/token")
  Future sendFirebaseToken(@Body() String token);
}
