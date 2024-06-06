import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/app/routes/app_pages.dart';
import 'package:wedevs_assignment/common/global_widget.dart';
import 'package:wedevs_assignment/model/register_model.dart';
import 'package:wedevs_assignment/repository/login_repo.dart';
import 'package:wedevs_assignment/repository/register_repo.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController
  TextEditingController signUpEmailTextController = TextEditingController();
  TextEditingController signUpNameTextController = TextEditingController();
  TextEditingController signUpPasswordTextController = TextEditingController();
  TextEditingController signUpConfirmPasswordTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> register() async {
    RegisterRepo registerRepo = RegisterRepo();
    RegisterModel model = RegisterModel();
    if(signUpEmailTextController.text.trim().isNotEmpty && signUpNameTextController.text.trim().isNotEmpty
    && signUpPasswordTextController.text.trim().isNotEmpty && signUpPasswordTextController.text.trim() ==
    signUpConfirmPasswordTextController.text.trim()) {
      model.email = signUpEmailTextController.text.trim();
      model.username = signUpNameTextController.text.trim();
      model.password = signUpPasswordTextController.text.trim();
      try{
      bool isRegister = await registerRepo.register(model);
      if (isRegister) {
         LoginRepo repo = LoginRepo();
        bool isLogin = await repo.login(model.email!, model.password!);
        if(isLogin){
          Get.toNamed(Routes.MAIN);
          successSnack('Welcome!');
        }
      }
    } catch(e){
        String errorMsg = e.toString().replaceFirst('Exception: ', '');
        errorSnack(errorMsg);
      }
    } else {
      Get.snackbar("Error.", "Please fill the register form correctly.");
    }
  }

}