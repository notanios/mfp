import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/data/storage/storage_extentions.dart';

import '../../data/models/failure/failure.dart';

class PhoneCodeController extends GetxController with StateMixin<String> {
  final UserRepository userRepository;
  var codeStatus = CodeInputStatus.INVALID.obs;
  GetStorage box = GetStorage();

  final TextEditingController codeController = TextEditingController();

  PhoneCodeController(this.userRepository);

  void confirmCode(String code, String phoneNumber, Function onSuccess,
      Function onError) async {
    codeStatus.value = CodeInputStatus.IN_PROGRESS;
    var response = await userRepository.confirmCode(code, phoneNumber);
    response.fold((l) {
      if (l is ServerFailure) {
        onError(l.errorObject.toString());
      }
      codeStatus.value = CodeInputStatus.VALID;
    }, (r) {
      box.putSessionStatus(SessionStatus.REGISTERED);
      print("getfirstname ${box.getFirstName()}");
      var password = r.password;
      if (password != null) box.putPassword(password);
      onSuccess();
      codeStatus.value = CodeInputStatus.VALID;
    });
  }
}

enum CodeInputStatus { INVALID, VALID, IN_PROGRESS }
