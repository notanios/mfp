import 'package:dio/dio.dart';
import 'package:mdf/data/api/user_api_service.dart';

import '../models/index.dart';

abstract class UserApiDataSource {
  Future<dynamic> login(RegisterBody body);

  Future <dynamic> sendFirebaseToken(String token);
  Future <List<HelpNotification>> getNotifications();

  Future<ActivationResponse> confirmCode(ActivationBody body);

  Future<dynamic> updateProfile(CompleteProfileBody body);

  Future<dynamic> logout();
}

class UserApiDataSourceImpl implements UserApiDataSource {
  final Dio dioClient;
  final UserApiService _userApiService;

  UserApiDataSourceImpl({required this.dioClient}) : _userApiService = UserApiService.create(dioClient);

  @override
  Future<dynamic> login(RegisterBody body) {
    return _userApiService.login(body);
  }

  @override
  Future sendFirebaseToken(String token) {
    return _userApiService.sendFirebaseToken(token);
  }

  @override
  Future<List<HelpNotification>> getNotifications() {
   //  return _userApiService.getNotifications();
    var notifications = <HelpNotification>[];
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "In asteptare"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    return Future.value(notifications);
  }

  @override
  Future<ActivationResponse> confirmCode(ActivationBody body) {
    return _userApiService.confirmCode(body);
  }

  @override
  Future<dynamic> updateProfile(CompleteProfileBody body) {
    return _userApiService.updateProfile(body);
  }

  @override
  Future logout() {
    return _userApiService.logout();
  }
}
