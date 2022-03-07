import 'package:get/get.dart';
import 'package:mdf/data/models/failure/failure.dart';
import 'package:mdf/data/models/index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../data/repos/user_repository_impl.dart';
import '../../push_notifications_controller.dart';

class NotificationsController extends GetxController with StateMixin<String> {
  final UserRepository userRepository;

  NotificationsController(this.userRepository);

  var isLoading = false.obs;
  var error = "".obs;
  var notifications = <HelpNotification>[].obs;

  RefreshController refreshController = RefreshController();

  @override
  void onInit() {
    super.onInit();
    _initPushNotifications();
    getNotifications(false);
  }

  void _initPushNotifications() {
    PushNotificationsController().init();
  }

  void getNotifications(bool showLoading) async {
    isLoading.value = showLoading;
    var response = await userRepository.getNotifications();
    response.fold((l) {
      refreshController.refreshCompleted();
      isLoading.value = false;
      if (l is ServerFailure) {
        error.value = l.errorObject.toString();
      }
    }, (r) {
      isLoading.value = false;
      refreshController.refreshCompleted();
      notifications.value = r;
      error.value = "";
    });
  }
}
