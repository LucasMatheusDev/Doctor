import 'package:doctor_home/app/Modules/Core/StyleGuide/Controller/style_guide.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Core/Components/logo_login.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/Register/pages/OneStep/View/step_1_register_view.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/Components/button_google.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/Components/button_login.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/View/singIn_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff00C6AD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                width: _size.width - 70,
                height: _size.height - 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    const LogoLogin(),
                    const Padding(
                      padding: EdgeInsets.all(30),
                      child: SingInView(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ButtonLogin(),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "___________  Entra com    __________",
                      style: GoogleFonts.mulish(
                        color: StyleGuide.color60,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Registrar-se "),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Get.to(
                          () => const Step1RegisterView(),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ButtonGoogle()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
