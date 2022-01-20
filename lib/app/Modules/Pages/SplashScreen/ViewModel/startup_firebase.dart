import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class StartupFirebaseViewModel {
  Future<void> startup() async {
    WidgetsFlutterBinding.ensureInitialized();
    //inicialização do Firebase nova versão
    await Firebase.initializeApp();
  }
}
