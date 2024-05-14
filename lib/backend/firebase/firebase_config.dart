import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAZVdX-s63Wc-Ba-XaHfrFw9U_Qtn3Mp_Y",
            authDomain: "quickoline.firebaseapp.com",
            projectId: "quickoline",
            storageBucket: "quickoline.appspot.com",
            messagingSenderId: "1083735886509",
            appId: "1:1083735886509:web:8818b5e60758f11eb91424"));
  } else {
    await Firebase.initializeApp();
  }
}
