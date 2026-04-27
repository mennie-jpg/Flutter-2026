
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;



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
        return windows;
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
    apiKey: 'AIzaSyBMSxyPoFziXDrlT4iBpgIfxSXFAKvIWxQ',
    appId: '1:816197539542:web:6033aad8cc733da7e15b77',
    messagingSenderId: '816197539542',
    projectId: 'test-3ae76',
    authDomain: 'test-3ae76.firebaseapp.com',
    storageBucket: 'test-3ae76.firebasestorage.app',
    measurementId: 'G-D1YWC78RGH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaeHJJYVXg5OMfgGvk1md9FFs4EPjvBnU',
    appId: '1:816197539542:android:321e292d14128374e15b77',
    messagingSenderId: '816197539542',
    projectId: 'test-3ae76',
    storageBucket: 'test-3ae76.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaVT9sVqs1ah6SCSQap7FzTiMZdzmOGyQ',
    appId: '1:816197539542:ios:c1447ad8eb499af7e15b77',
    messagingSenderId: '816197539542',
    projectId: 'test-3ae76',
    storageBucket: 'test-3ae76.firebasestorage.app',
    iosBundleId: 'com.example.myApi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaVT9sVqs1ah6SCSQap7FzTiMZdzmOGyQ',
    appId: '1:816197539542:ios:c1447ad8eb499af7e15b77',
    messagingSenderId: '816197539542',
    projectId: 'test-3ae76',
    storageBucket: 'test-3ae76.firebasestorage.app',
    iosBundleId: 'com.example.myApi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBMSxyPoFziXDrlT4iBpgIfxSXFAKvIWxQ',
    appId: '1:816197539542:web:b1d0835f1307cc8fe15b77',
    messagingSenderId: '816197539542',
    projectId: 'test-3ae76',
    authDomain: 'test-3ae76.firebaseapp.com',
    storageBucket: 'test-3ae76.firebasestorage.app',
    measurementId: 'G-KZL1DKB1E6',
  );
}
