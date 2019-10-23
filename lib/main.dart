import 'package:kmjmconnect/utils/appdata.dart';
import 'package:kmjmconnect/screens/dashboard.dart';
import 'package:kmjmconnect/screens/signin.dart';
import 'package:kmjmconnect/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();

 AppData.prefs = await SharedPreferences.getInstance();
 AppData.isLoggedIN();

   SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      
runApp(MyApp());
} 

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KMJM connect',
      home: SplashScreen(),
    );

  }
}


