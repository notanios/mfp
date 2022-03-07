import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/presentation/profile_form/profile_form_controller.dart';

class ProfileFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileFormController(userRepository: Get.find<UserRepository>()));
  }
}