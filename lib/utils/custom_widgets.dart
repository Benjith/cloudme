import 'package:kmjmconnect/screens/about.dart';
import 'package:kmjmconnect/screens/paytm.dart';
import 'package:kmjmconnect/screens/otp.dart';
import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
   static Widget customAppBar({@required String name}){
    return AppBar(
      centerTitle: true,
      title: Text(name,style: TextStyle(color: Colors.black),),
      elevation: 0.0,
      brightness: Brightness.light,
      backgroundColor: Colors.white,

    ); 
  }
  static Widget bottemTab(int index,BuildContext context) {
    return new BottomNavigationBar(
      onTap: (index){
        switch (index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Paytm()));
            break;
             case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp(email: 'ben@gmal.com',otp: '1234',)));
            break;
              case 3:
            Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
            break;
          default:
        }
      },
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
          
              icon: Image.asset(
                "assets/home.png",
                width: 24.0,
                height: 24.0,
              ),
              title: Text(
                'Home',
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                "assets/shopping-bagg.png",
                width: 24.0,
                height: 24.0,
              ),
              title: Text(
                'OTP',
              )),
          // new BottomNavigationBarItem(
          //     icon: Icon(Icons.add),
          //     title: Text(
          //       '',
          //     )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                "assets/bank.png",
                width: 24.0,
                height: 24.0,
              ),
              title: Text(
                'Bank',
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                "assets/delivery.png",
                width: 24.0,
                height: 24.0,
              ),
              title: Text(
                'About',
              )),
        ]);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}