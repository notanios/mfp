import 'package:get/get.dart';
import 'package:mdf/data/models/index.dart';

import '../../push_notifications_controller.dart';

class NotificationsController extends GetxController {
  List<Notifications> notifications = [];

  @override
  void onInit() {
    super.onInit();
    _initPushNotifications();
    syncNotifications();
  }

  void _initPushNotifications() {
    PushNotificationsController().init();
  }

  void syncNotifications(){
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
    notifications.add(Notifications(id: 1, type: "Transportare", descriptions: "4 Pers in Palanca", status: "waiting"));
  }
}