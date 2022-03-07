import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

import '../../data/models/failure/failure.dart';

class PhoneCodeController extends GetxController with StateMixin<String> {
  final UserRepository userRepository;

  PhoneCodeController(this.userRepository);

  var isLoading = false.obs;
  var error = "".obs;

  void confirmCode(String code) async {
    isLoading.value = true;
    var response = await userRepository.confirmCode(code);
    response.fold((l) {
      isLoading.value = false;
      if (l is ServerFailure) {
        error.value = l.errorObject.toString();
      }
    }, (r) {
      isLoading.value = false;
      error.value = "";
    });
  }
}
