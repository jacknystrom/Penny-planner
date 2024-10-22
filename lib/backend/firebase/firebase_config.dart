import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBYOR4lO16nIjcrBalTTr3CPvxzsMQikJg",
            authDomain: "penny-planner-4e5e6.firebaseapp.com",
            projectId: "penny-planner-4e5e6",
            storageBucket: "penny-planner-4e5e6.appspot.com",
            messagingSenderId: "693168869251",
            appId: "1:693168869251:web:adb82ebd13e8a77c9bf0b6",
            measurementId: "G-RTQRFC6WJ3"));
  } else {
    await Firebase.initializeApp();
  }
}
