import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/repository/profile_repo.dart';

import '../../../../model/profile_model.dart';

class ProfileController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();

  }

  Future<ProfileModel?> getProfile() async {
    ProfileRepo repo = ProfileRepo();
    ProfileModel? model = await repo.getProfile();
    return model;
  }
}