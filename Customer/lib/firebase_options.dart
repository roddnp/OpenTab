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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAzEe_u_SH6c1C8278hvmlfqd7uWPVWkzU',
    appId: '1:53917388536:web:a1955d0e80f7a3eea6b50d',
    messagingSenderId: '53917388536',
    projectId: 'opentab-8039c',
    authDomain: 'opentab-8039c.firebaseapp.com',
    databaseURL: 'https://opentab-8039c-default-rtdb.firebaseio.com',
    storageBucket: 'opentab-8039c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHJdnW682KAC7LnzJ6gW_fQaaxHmgGu9A',
    appId: '1:53917388536:android:a05e61c82fcff6e9a6b50d',
    messagingSenderId: '53917388536',
    projectId: 'opentab-8039c',
    databaseURL: 'https://opentab-8039c-default-rtdb.firebaseio.com',
    storageBucket: 'opentab-8039c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbr9NCVwdAwVDZAnWKshp_tbn3LDId3vQ',
    appId: '1:53917388536:ios:6e9dc5dec58fb495a6b50d',
    messagingSenderId: '53917388536',
    projectId: 'opentab-8039c',
    databaseURL: 'https://opentab-8039c-default-rtdb.firebaseio.com',
    storageBucket: 'opentab-8039c.appspot.com',
    iosClientId: '53917388536-vu93ofi31jilbr04k9gdoib88ovi6fn0.apps.googleusercontent.com',
    iosBundleId: 'com.example.opentab',
  );
}
