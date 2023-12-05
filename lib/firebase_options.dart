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
    apiKey: 'AIzaSyC1tl88DEqT7e27s0HfaxXjyb0R9dJ9ov8',
    appId: '1:11540371773:web:13c0243f04d00d7cbccd54',
    messagingSenderId: '11540371773',
    projectId: 'fir-project-flutter-ebf1a',
    authDomain: 'fir-project-flutter-ebf1a.firebaseapp.com',
    storageBucket: 'fir-project-flutter-ebf1a.appspot.com',
    measurementId: 'G-2LMFE1HGQK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYG1m6ag2wPVy8hYd108swrpBtds8IY84',
    appId: '1:11540371773:android:50486c2ab2f57e88bccd54',
    messagingSenderId: '11540371773',
    projectId: 'fir-project-flutter-ebf1a',
    storageBucket: 'fir-project-flutter-ebf1a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBB9qrT9faXprAodQdGLZzzdtrA-7SMbFE',
    appId: '1:11540371773:ios:fafdaba74806e419bccd54',
    messagingSenderId: '11540371773',
    projectId: 'fir-project-flutter-ebf1a',
    storageBucket: 'fir-project-flutter-ebf1a.appspot.com',
    androidClientId: '11540371773-0i8mtjti0i362sclndl43kd85lcp460n.apps.googleusercontent.com',
    iosClientId: '11540371773-ardigk07u5q9dftnkad17srguko8n1nj.apps.googleusercontent.com',
    iosBundleId: 'com.example.uiFinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBB9qrT9faXprAodQdGLZzzdtrA-7SMbFE',
    appId: '1:11540371773:ios:7d79da446d9881a9bccd54',
    messagingSenderId: '11540371773',
    projectId: 'fir-project-flutter-ebf1a',
    storageBucket: 'fir-project-flutter-ebf1a.appspot.com',
    androidClientId: '11540371773-0i8mtjti0i362sclndl43kd85lcp460n.apps.googleusercontent.com',
    iosClientId: '11540371773-refnn3kmmsj3865lii88ifgd4mul7hfp.apps.googleusercontent.com',
    iosBundleId: 'com.example.uiFinal.RunnerTests',
  );
}