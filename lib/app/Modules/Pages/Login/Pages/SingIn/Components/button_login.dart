import 'package:doctor_home/app/Modules/Core/StyleGuide/Controller/style_guide.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/ViewModel/sing_in_viewmodel.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/controller/loading_login_controller.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingLoginController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : FloatingActionButton.extended(
              onPressed: () async {
                await SingInViewModel()
                    .singIn(UserSingInController.to.userSingIn);
              },
              backgroundColor: StyleGuide.color60,
              extendedPadding: const EdgeInsets.all(100),
              label: Text(
                "Login",
                style: GoogleFonts.mulish(fontSize: 15, color: Colors.white),
              ),
            ),
    );
  }
}
