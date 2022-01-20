import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/Model/user_sing_in.dart';
import 'package:doctor_home/app/Modules/Pages/Login/Pages/SingIn/ViewModel/sing_in_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> singIn(UserSingIn _user) async {
    await _auth
        .signInWithEmailAndPassword(
      email: _user.email,
      password: _user.password,
    )
        .then((_value) {
      SingInViewModel().userAuthentic(_value);
    }).catchError(
      (e) {
        SingInViewModel().userError(
          // ignore: avoid_dynamic_calls
          e.code.toString(),
        );
      },
    );
  }
}
