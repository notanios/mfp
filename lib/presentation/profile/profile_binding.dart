import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:mdf_volunteers/data/repos/user_repository_impl.dart';
import 'package:mdf_volunteers/presentation/profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    @override
    void dependencies() {
      //Get.lazyPut(() => ProfileController(userRepository: Get.find<UserRepository>()));
      //Get.lazyPut(() => InternetConnectionController());
    }
  }

}