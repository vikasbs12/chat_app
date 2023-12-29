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
    apiKey: 'AIzaSyA_Pxm9eL-fOi221gd4VClNidKzB3okkyY',
    appId: '1:773633350172:web:219d02c9cda9d81e8a5dd9',
    messagingSenderId: '773633350172',
    projectId: 'chatapp-94814',
    authDomain: 'chatapp-94814.firebaseapp.com',
    databaseURL: 'https://chatapp-94814-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-94814.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmxaMfxNvBJws7H4IJsa9rVpWKEa0HwP8',
    appId: '1:773633350172:android:a649a7e3753b1bdb8a5dd9',
    messagingSenderId: '773633350172',
    projectId: 'chatapp-94814',
    databaseURL: 'https://chatapp-94814-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-94814.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFvADP_n9ubaKDBJ3r3CjCqHlD2JSMh1s',
    appId: '1:773633350172:ios:1e913ca3cf9326798a5dd9',
    messagingSenderId: '773633350172',
    projectId: 'chatapp-94814',
    databaseURL: 'https://chatapp-94814-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-94814.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFvADP_n9ubaKDBJ3r3CjCqHlD2JSMh1s',
    appId: '1:773633350172:ios:165838d7a4c5a0498a5dd9',
    messagingSenderId: '773633350172',
    projectId: 'chatapp-94814',
    databaseURL: 'https://chatapp-94814-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-94814.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
