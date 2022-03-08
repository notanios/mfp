import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/data/models/failure/failure.dart';
import 'package:mdf/data/models/index.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';
import 'package:mdf/presentation/profile_form/components/help_checkboxes.dart';

class ProfileFormController extends GetxController {
  final UserRepository userRepository;

  ProfileFormController({required this.userRepository});

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  final transportKey = GlobalKey<HelpCheckboxesState>();


  var isFromRegister = false;

  List<Distrinct> district = [];
  Distrinct? _selectedDistrict = null;

  var isFormValid = false.obs;

  void setSelectedDistrict(Distrinct district) {
    _selectedDistrict = district;
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

  void completeProfile() {

  }

  void _validateForm() {
    var hasValidService = transportKey.currentState?.getCheckedServicesLabels().isNotEmpty == true;

    var isValid = firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        locationController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        hasValidService;

    isFormValid.value = isValid;
  }

  void _initControllers() {
    firstNameController.addListener(() {
      _validateForm();
    });
    lastNameController.addListener(() {
      _validateForm();
    });
    locationController.addListener(() {
      _validateForm();
    });
    emailController.addListener(() {
      _validateForm();
    });
  }

  void onCheckboxChanged() {
    _validateForm();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    locationController.dispose();
    emailController.dispose();
  }
}
