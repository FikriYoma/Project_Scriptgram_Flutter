import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:main_app/responsive/mobile_screen_layout.dart';
import 'package:main_app/responsive/responsive_layout.dart';
import 'package:main_app/responsive/web_screen_layout.dart';
import 'package:main_app/screens/login_screen.dart';
import 'package:main_app/utils/colors.dart';
import 'package:main_app/screens/splash.dart';
import 'package:main_app/provider/registerProvider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAIMSAU0nODfHfR4jTlIYOh8dYAnm46TuQ",
        appId: "1:351631703519:web:59c30dc52dac2885b9986a",
        messagingSenderId: "351631703519",
        projectId: "mainapp-81631",
        storageBucket: "mainapp-81631.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => User(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scriptgram Clone',
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: mobileBackgroundColor,
        // ),

        // home: ResponsiveLayout(
        //   mobileScreenLayout: MobileScreenLayout(),
        //   webScreenLayout: WebScreenLayout(),
        // ),
        home: splash(),
      ),
    );
  }
}
