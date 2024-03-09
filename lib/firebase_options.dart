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
    apiKey: 'AIzaSyBk5V9mdxAIpQFFWU17lOk9IlYWlXjhV_A',
    appId: '1:134397620228:web:f3f57806235dab12a74551',
    messagingSenderId: '134397620228',
    projectId: 'level-up-e77a8',
    authDomain: 'level-up-e77a8.firebaseapp.com',
    storageBucket: 'level-up-e77a8.appspot.com',
    measurementId: 'G-RJN45WYQ4L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCH08KlD3eIhvfdLxBo2p1i0hwTItRcx0E',
    appId: '1:134397620228:android:2ee1940eec272cb4a74551',
    messagingSenderId: '134397620228',
    projectId: 'level-up-e77a8',
    storageBucket: 'level-up-e77a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1247KOLYsHknzKoyO3uQooRcIG3vk37k',
    appId: '1:134397620228:ios:9090bde985bbd3f6a74551',
    messagingSenderId: '134397620228',
    projectId: 'level-up-e77a8',
    storageBucket: 'level-up-e77a8.appspot.com',
    iosBundleId: 'com.levelup.levelup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1247KOLYsHknzKoyO3uQooRcIG3vk37k',
    appId: '1:134397620228:ios:0ce256d0d26db6a2a74551',
    messagingSenderId: '134397620228',
    projectId: 'level-up-e77a8',
    storageBucket: 'level-up-e77a8.appspot.com',
    iosBundleId: 'com.levelup.levelup.RunnerTests',
  );
}