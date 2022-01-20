import 'package:doctor_home/app/Modules/Core/StyleGuide/Controller/style_guide.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Core/Helpers/validator.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/controller/user_controller.dart';
import 'package:flutter/material.dart';

class SingInView extends StatelessWidget {
  const SingInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _password = TextEditingController();
    final GlobalKey<FormState> formLogin = GlobalKey<FormState>();

    return Form(
      key: formLogin,
      child: Column(
        children: [
          TextFormField(
            onEditingComplete: () {
              formLogin.currentState!.validate();
            },
            validator: (value) {
              if (Validator().emailValid(
                value.toString(),
              )) {
              } else {
                return "Email invalido";
              }
            },
            onChanged: (value) {
              UserSingInController.to.userSingIn.email = value;
            },
            controller: _email,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: StyleGuide.color60,
                ),
              ),
              fillColor: Colors.grey[200],
              filled: true,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              prefixIcon: Icon(Icons.email, color: StyleGuide.color60),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: StyleGuide.color60,
                ),
              ),
              hintText: "E-mail",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            onChanged: (value) {
              UserSingInController.to.userSingIn.password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Insira a senha";
              }
            },
            controller: _password,
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: StyleGuide.color60,
                ),
              ),
              fillColor: Colors.grey[200],
              filled: true,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              prefixIcon: Icon(Icons.lock, color: StyleGuide.color60),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                borderSide: BorderSide(
                  color: StyleGuide.color60,
                ),
              ),
              hintText: "Senha",
            ),
          )
        ],
      ),
    );
  }
}
