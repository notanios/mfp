import 'package:get/get.dart';
import 'package:mdf/presentation/code_verification/phone_code_controller.dart';

import '../../data/repos/user_repository_impl.dart';

class PhoneCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneCodeController(Get.find<UserRepository>()));
  }

}