import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/app/routes/app_pages.dart';

import '../../../../common/global_widget.dart';
import '../../../../repository/login_repo.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  TextEditingController signInEmailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  var isPasswordVisibleLogin = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  Future<void> login() async {
    LoginRepo loginRepo = LoginRepo();
    if(signInEmailTextController.text.trim().isNotEmpty && passwordTextController.text.trim().isNotEmpty) {
      try{
        bool isLoginSuccess = await loginRepo.login(signInEmailTextController.text.trim(), passwordTextController.text.trim());
        if (isLoginSuccess) {
          successSnack("Login Successful");
          Get.toNamed(Routes.MAIN);
        }
      } catch(e){
        String errorMsg = e.toString().replaceFirst('Exception: ', '');
        errorSnack(errorMsg);
      }
    } else {
      Get.snackbar("Error.", "Please fill the form correctly.");
    }
  }

}
