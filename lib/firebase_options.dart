// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAL4ii2p5QNVPDeywOlOlEDFfuSV-D94EY',
    appId: '1:690640016533:web:c6fd659aac28b3bee3779c',
    messagingSenderId: '690640016533',
    projectId: 'ecorp-ae0aa',
    authDomain: 'ecorp-ae0aa.firebaseapp.com',
    storageBucket: 'ecorp-ae0aa.appspot.com',
    measurementId: 'G-WQ9VQ0JL1B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlZfLRaSHv6qdex4kTmYLF6325MlOT2FM',
    appId: '1:690640016533:android:0f9ee3ba6e6bde36e3779c',
    messagingSenderId: '690640016533',
    projectId: 'ecorp-ae0aa',
    storageBucket: 'ecorp-ae0aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDe4ZdXCsIL2LQyc4fwaNjoZ3aYmGlkbJw',
    appId: '1:690640016533:ios:ab7a587ad24d8682e3779c',
    messagingSenderId: '690640016533',
    projectId: 'ecorp-ae0aa',
    storageBucket: 'ecorp-ae0aa.appspot.com',
    iosBundleId: 'com.example.eCorp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDe4ZdXCsIL2LQyc4fwaNjoZ3aYmGlkbJw',
    appId: '1:690640016533:ios:966ba48b1c109018e3779c',
    messagingSenderId: '690640016533',
    projectId: 'ecorp-ae0aa',
    storageBucket: 'ecorp-ae0aa.appspot.com',
    iosBundleId: 'com.example.eCorp.RunnerTests',
  );
}
