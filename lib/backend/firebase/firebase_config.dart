import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAWbW-o4RfetGKl7_QtGS2egFiuPeX8wGI",
            authDomain: "martingale-app-5qaulz.firebaseapp.com",
            projectId: "martingale-app-5qaulz",
            storageBucket: "martingale-app-5qaulz.firebasestorage.app",
            messagingSenderId: "60320923553",
            appId: "1:60320923553:web:cacd6766cda11ccb0015e0"));
  } else {
    await Firebase.initializeApp();
  }
}
