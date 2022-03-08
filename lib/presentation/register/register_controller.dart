import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/storage/storage_extentions.dart';
import 'package:mdf/presentation/profile_form/components/help_checkboxes.dart';

import '../../data/models/failure/failure.dart';
import '../../data/models/index.dart';
import '../../data/repos/user_repository_impl.dart';

class CompleteProfileController extends GetxController {
  final UserRepository userRepository;

  CompleteProfileController({required this.userRepository});

  var isFormValid = false.obs;
  var isLoading = false.obs;

  TextEditingController locationController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  final helpsChecksKey = GlobalKey<HelpCheckboxesState>();

  List<Distrinct> district = [];

  void setSelectedDistrict(Distrinct district) {
    locationController.text = district.name ?? "";
  }

  @override
  void onInit() {
    super.onInit();
    getDistricts();
    _initControllers();
  }

  void getDistricts() async {
    var response = await userRepository.getDistricts();
    response.fold((l) => {if (l is ServerFailure) {}}, (r) => {district = r});
  }

  void completeProfile(Function onSuccess, Function onError) async {
    isLoading.value = true;
    List<String> locations = [locationController.text];
    List<String> services =
        helpsChecksKey.currentState?.getCheckedServicesLabels() ?? [];
    String? details = detailsController.text;

    var result =
        await userRepository.completeProfile(locations, services, details);
    result.fold((l) {
      isLoading.value = false;
      if (l is ServerFailure) {
        onError(l.errorObject);
      }
    }, (r) {
      isLoading.value = false;
      GetStorage box = GetStorage();
      box.putSessionStatus(SessionStatus.LOGGED);
      onSuccess();
    });
  }

  void _validateForm() {
    var hasValidService =
        helpsChecksKey.currentState?.getCheckedServicesLabels().isNotEmpty ==
            true;

    print("_validateForm hasValidService $hasValidService");

    var isValid = locationController.text.isNotEmpty && hasValidService;

    isFormValid.value = isValid;
  }

  void _initControllers() {
    locationController.addListener(() {
      _validateForm();
    });
  }

  void onCheckboxChanged() {
    _validateForm();
  }

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
  }
}
