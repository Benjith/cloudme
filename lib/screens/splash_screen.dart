
import 'package:kmjmconnect/utils/appdata.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'signin.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  
  checkLogin(BuildContext context) {
    if(AppData.isLogged == true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Dashboard()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIN()));
    }
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      checkLogin(context);
    });

    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}