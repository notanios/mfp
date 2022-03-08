import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:libphonenumber/libphonenumber.dart';
import 'package:mdf/data/models/failure/failure.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/data/storage/storage_extentions.dart';

class LoginController extends GetxController with StateMixin<String> {
  final UserRepository userRepository;

  LoginController({required this.userRepository});

  var isFormValid = false.obs;
  var isLoading = false.obs;

  TextEditingController phoneController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  CountryCode? _selectedCountryCode;

  @override
  void onInit() {
    super.onInit();
    initInputController();
    change(null, status: RxStatus.success());
    //getUsers();
  }

  void login(Function onSuccess, Function onError) async {
    var number = getPhoneNumber();
    if (number != null) {
      isLoading.value = true;
      var response = await userRepository.login(firstNameController.text,
          lastNameController.text, emailController.text, number);
      response.fold((l) {
        isLoading.value = false;
        if (l is ServerFailure) {
          onError(l.errorObject.toString());
        }
      }, (r) {
        isLoading.value = false;
        GetStorage box = GetStorage();
        box.putFirstName(firstNameController.text);
        box.putLastName(lastNameController.text);
        box.putEmail(emailController.text);
        box.putPhoneNumber(number);
        onSuccess();
      });
    }
  }

  void initInputController() {
    phoneController.addListener(() async {
      isFormValid.value = await _isFormValid();
    });
    firstNameController.addListener(() async {
      isFormValid.value = await _isFormValid();
    });
    lastNameController.addListener(() async {
      isFormValid.value = await _isFormValid();
    });
  }

  Future<bool> _isFormValid() async {
    String code;
    if (_selectedCountryCode?.code != null) {
      code = _selectedCountryCode!.code ?? "MD";
    } else {
      code = "MD";
    }
    var isValidNumber = await PhoneNumberUtil.isValidPhoneNumber(
            phoneNumber: phoneController.text, isoCode: code) ??
        false;

    return isValidNumber &&
        firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty;
  }

  void selectedCountryCode(CountryCode code) {
    _selectedCountryCode = code;
  }

  String? getPhoneNumber() {
    String code;
    if (_selectedCountryCode?.dialCode != null) {
      code = _selectedCountryCode!.dialCode ?? "373";
    } else {
      code = "373";
    }
    String? number;
    if (phoneController.text.isNotEmpty) {
      if (phoneController.text.startsWith("0")) {
        number = phoneController.text.replaceFirst("0", "").trim();
      } else {
        number = phoneController.text;
      }
      return code + number;
    } else {
      return null;
    }
  }
}
