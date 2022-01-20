import 'package:doctor_home/app/Modules/Pages/Login/Pages/Home/View/home_view.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/Model/user_sing_in.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/controller/loading_login_controller.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/repository/helper/verify_error_login.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/repository/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingInViewModel {
  Future singIn(UserSingIn _user) async {
    LoadingLoginController.isLoading.value = true;
    if (_user.email.length > 6 && _user.password.length > 5) {
      await Login().singIn(_user);
    } else {
      LoadingLoginController.isLoading.value = false;
      Get.snackbar("erro", "Verifique os campos digitados");
    }
  }

  void userAuthentic(UserCredential _credential) {
    if (_credential.user != null) {
      Get.to(
        () => //! tela inicial,
            const HomeView(),
        transition: Transition.fadeIn,
      );
      LoadingLoginController.isLoading.value = false;
    }
    LoadingLoginController.isLoading.value = false;
  }

  SnackbarController userError(String error) {
    LoadingLoginController.isLoading.value = false;
    return Get.snackbar(
      "Erro",
      VerifyErrorLogin().verifyError("auth/$error"),
      snackPosition: SnackPosition.TOP,
      colorText: Colors.black,
    );
  }
}
