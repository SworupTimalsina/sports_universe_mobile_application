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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKhEQBZZjxQFPsZK90rWxrjww7qztp20I',
    appId: '1:599105364990:android:a413bd8c0c271ed1a296af',
    messagingSenderId: '599105364990',
    projectId: 'sports-universe-14eab',
    databaseURL: 'https://sports-universe-14eab-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sports-universe-14eab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxkg5KGKrMNzVNTSc-uGAGYvvVE8q38Vo',
    appId: '1:599105364990:ios:c8a839484d9fd406a296af',
    messagingSenderId: '599105364990',
    projectId: 'sports-universe-14eab',
    databaseURL: 'https://sports-universe-14eab-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sports-universe-14eab.appspot.com',
    iosClientId: '599105364990-gb40v2infm3mfj14m1ambqe3cor9s36u.apps.googleusercontent.com',
    iosBundleId: 'com.example.sportsUniverse',
  );
}
