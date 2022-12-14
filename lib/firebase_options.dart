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
    apiKey: 'AIzaSyDcusFDUSYMpZQGcqQerYsHbdsBfWiMCfc',
    appId: '1:1098997505951:web:07209f508070429c0467aa',
    messagingSenderId: '1098997505951',
    projectId: 'ltuc-app-flutter',
    authDomain: 'ltuc-app-flutter.firebaseapp.com',
    storageBucket: 'ltuc-app-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGWHZrvGsxCO6k9ghJEaPQMvhdXX9PSy8',
    appId: '1:1098997505951:android:9dc5af7fc79651420467aa',
    messagingSenderId: '1098997505951',
    projectId: 'ltuc-app-flutter',
    storageBucket: 'ltuc-app-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBi0v79PDOzFpDXR_D0zKWmicTB11jQG38',
    appId: '1:1098997505951:ios:314bd75c72dac3d80467aa',
    messagingSenderId: '1098997505951',
    projectId: 'ltuc-app-flutter',
    storageBucket: 'ltuc-app-flutter.appspot.com',
    iosClientId: '1098997505951-i5qhvo495ui76923ikkg00keh8m64ocn.apps.googleusercontent.com',
    iosBundleId: 'com.example.citycafeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBi0v79PDOzFpDXR_D0zKWmicTB11jQG38',
    appId: '1:1098997505951:ios:314bd75c72dac3d80467aa',
    messagingSenderId: '1098997505951',
    projectId: 'ltuc-app-flutter',
    storageBucket: 'ltuc-app-flutter.appspot.com',
    iosClientId: '1098997505951-i5qhvo495ui76923ikkg00keh8m64ocn.apps.googleusercontent.com',
    iosBundleId: 'com.example.citycafeApp',
  );
}
