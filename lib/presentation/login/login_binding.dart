import 'package:get/get.dart';
import 'package:mdf_volunteers/data/repos/user_repository_impl.dart';
import 'package:mdf_volunteers/presentation/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    print("LoginBinding dependencies");
    Get.lazyPut(() => LoginController(userRepository: Get.find<UserRepository>()));
    //Get.lazyPut(() => InternetConnectionController());
  }
}
