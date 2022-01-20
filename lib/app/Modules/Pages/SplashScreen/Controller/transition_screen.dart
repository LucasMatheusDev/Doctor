import 'package:doctor_home/app/Modules/Pages/Login/Core/View/login_view.dart';
import 'package:doctor_home/app/Modules/Pages/SplashScreen/ViewModel/startup_firebase.dart';
import 'package:get/get.dart';

class TransitionScreenController {
  Future<void> transitionToLogin() async {
    await StartupFirebaseViewModel().startup();
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Get.off(
      () => const LoginView(),
      transition: Transition.fade,
      duration: const Duration(seconds: 2),
    );
  }
}
