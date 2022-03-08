import 'package:get/get.dart';
import 'package:mdf/presentation/register/register_controller.dart';

import '../../data/repos/user_repository_impl.dart';

class CompleteProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileController(userRepository: Get.find<UserRepository>()));
  }

}