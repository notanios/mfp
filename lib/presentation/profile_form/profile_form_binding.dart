import 'package:get/get.dart';
import 'package:mdf_volunteers/data/repos/user_repository_impl.dart';
import 'package:mdf_volunteers/presentation/profile_form/profile_form_controller.dart';

class ProfileFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileFormController(userRepository: Get.find<UserRepository>()));
  }
}