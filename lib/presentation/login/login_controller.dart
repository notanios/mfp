import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

class LoginController extends GetxController with StateMixin<String> {
  final UserRepository userRepository;
  LoginController({required this.userRepository});
  var isNumberValid = false.obs;
  var isLoading = false.obs;

  TextEditingController inputController = TextEditingController();

  CountryCode? _selectedCountryCode;

  @override
  void onInit() {
    super.onInit();
    initInputController();
    change(null, status: RxStatus.success());
    //getUsers();
  }

  void getUsers(String phoneNumber) async {
    isLoading.value = true;
    var response = await userRepository.login(phoneNumber);
    response.fold((l) {
      isLoading.value = false;
    }, (r) {
      isLoading.value = false;
    });
  }

  void initInputController() {
    inputController.addListener(() {
      isNumberValid.value = _isNumberValid();
    });
  }

  bool _isNumberValid() {
    bool isValidNumber = false;
    if (_selectedCountryCode?.dialCode == null) {
      isValidNumber = GetUtils.isPhoneNumber(
          "+373" + inputController.text);
    } else {
      isValidNumber = GetUtils.isPhoneNumber(
          _selectedCountryCode!.dialCode! + inputController.text);
    }

    return isValidNumber;
  }

  void selectedCountryCode(CountryCode code) {
    _selectedCountryCode = code;
  }
}
