import 'package:get/get.dart';
import 'package:mdf/presentation/notifications/notifications_controller.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
      Get.put(NotificationsController());
  }
}