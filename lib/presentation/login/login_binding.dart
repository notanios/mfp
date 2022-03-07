import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/presentation/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(userRepository: Get.find<UserRepository>()));
  }
}
