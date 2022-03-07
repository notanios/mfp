import 'package:get/get.dart';
import 'package:mdf_volunteers/data/models/index.dart';

class NotificationsController extends GetxController {
  List<Notifications> notifications = [];


  @override
  void onInit() {
    super.onInit();
    syncNotifications();
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