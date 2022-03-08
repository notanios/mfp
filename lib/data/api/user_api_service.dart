import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/index.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class UserApiService {
  static UserApiService create(Dio client) {
    return _UserApiService(client);
  }

  @POST('/register')
  Future<dynamic> login (@Body()RegisterBody body);

  @POST("/token")
  Future sendFirebaseToken(@Body() String token);

  @GET("/notifications")
  Future<List<HelpNotification>> getNotifications();

  @POST("/activate")
  Future<ActivationResponse> confirmCode(@Body() ActivationBody body);

  @POST("/profile")
  Future updateProfile();

  @POST("/logout")
  Future logout();
}
