import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/presentation/profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => ProfileController(Get.find<UserRepository>()));
  }
}