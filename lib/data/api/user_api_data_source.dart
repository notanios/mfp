import 'package:dio/dio.dart';
import 'package:mdf/data/api/user_api_service.dart';

import '../models/index.dart';

abstract class UserApiDataSource {
  Future<UserResponseApiDto> login(String phoneNumber);

  Future <dynamic> sendFirebaseToken(String token);
  Future <List<HelpNotification>> getNotifications();

  Future<dynamic> confirmCode(String code);

  Future<dynamic> updateProfile();

  Future<dynamic> logout();
}

class UserApiDataSourceImpl implements UserApiDataSource {
  final Dio dioClient;
  final UserApiService _userApiService;

  UserApiDataSourceImpl({required this.dioClient}) : _userApiService = UserApiService.create(dioClient);

  @override
  Future<UserResponseApiDto> login(String phoneNumber) {
    return _userApiService.login(phoneNumber);
  }

  @override
  Future sendFirebaseToken(String token) {
    return _userApiService.sendFirebaseToken(token);
  }

  @override
  Future<List<HelpNotification>> getNotifications() {
   //  return _userApiService.getNotifications();
    var notifications = <HelpNotification>[];
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
    notifications.add(HelpNotification(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    return Future.value(notifications);
  }

  @override
  Future confirmCode(String code) {
    return _userApiService.confirmCode(code);
  }

  @override
  Future updateProfile() {
    return _userApiService.updateProfile();
  }

  @override
  Future logout() {
    return _userApiService.logout();
  }
}
