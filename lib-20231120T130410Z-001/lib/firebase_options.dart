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
    apiKey: 'AIzaSyBGkp-ZdAJjc6BwAY1WozgzmfaHqkJYhO0',
    appId: '1:578761558129:web:73185732e3a97adf6f73d0',
    messagingSenderId: '578761558129',
    projectId: 'convocare-d4f46',
    authDomain: 'convocare-d4f46.firebaseapp.com',
    storageBucket: 'convocare-d4f46.appspot.com',
    measurementId: 'G-Z4HF63F4KX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwdPhcsGoGnKWPS3zIKrNyLTbef_K3PI0',
    appId: '1:578761558129:android:1bb210b266201a996f73d0',
    messagingSenderId: '578761558129',
    projectId: 'convocare-d4f46',
    storageBucket: 'convocare-d4f46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpyoo6AipJYRgNtzB1MO_MZHmq8gPO7PY',
    appId: '1:578761558129:ios:12072f402c5b2d686f73d0',
    messagingSenderId: '578761558129',
    projectId: 'convocare-d4f46',
    storageBucket: 'convocare-d4f46.appspot.com',
    iosBundleId: 'com.example.convoCare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpyoo6AipJYRgNtzB1MO_MZHmq8gPO7PY',
    appId: '1:578761558129:ios:ca130aa27baaa46f6f73d0',
    messagingSenderId: '578761558129',
    projectId: 'convocare-d4f46',
    storageBucket: 'convocare-d4f46.appspot.com',
    iosBundleId: 'com.example.convoCare.RunnerTests',
  );
}
