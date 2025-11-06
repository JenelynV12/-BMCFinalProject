// This imports all the standard Material Design widgets
import 'package:flutter/material.dart';

// 1. Import the Firebase core package
import 'package:firebase_core/firebase_core.dart'; 
// 2. Import the auto-generated Firebase options file
import 'firebase_options.dart'; 
// 1. Import the native splash package
import 'package:flutter_native_splash/flutter_native_splash.dart'; 
import 'package:ecommerce_app/screens/auth_wrapper.dart'; // 1. Import AuthWrapper 

void main() async {
  
  // 1. Preserve the splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // 2. Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );
  
  // 3. Run the app
  runApp(const MyApp());

  // 4. Remove the splash screen after app is ready
  FlutterNativeSplash.remove(); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. MaterialApp is the root of your app
    return MaterialApp(
      // 2. This removes the "Debug" banner
      debugShowCheckedModeBanner: false, 
      title: 'eCommerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // 2. Change the home to AuthWrapper
      home: const AuthWrapper(),
    );
  }
}
