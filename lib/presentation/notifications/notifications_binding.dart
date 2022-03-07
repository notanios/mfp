import 'package:get/get.dart';
import 'package:mdf/presentation/notifications/notifications_controller.dart';

import '../../data/repos/user_repository_impl.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationsController(Get.find<UserRepository>()));
  }
}
