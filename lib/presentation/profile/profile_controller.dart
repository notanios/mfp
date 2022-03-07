import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

import '../../data/models/failure/failure.dart';

class ProfileController extends GetxController {
  final UserRepository userRepository;

  ProfileController(this.userRepository);

  var isLoading = false.obs;
  var error = "".obs;

  void updateProfile() async {
    var response = await userRepository.updateProfile();
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

  void logout() async {
    var response = await userRepository.logout();
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
