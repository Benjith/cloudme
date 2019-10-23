import 'dart:convert';

import 'package:kmjmconnect/screens/paytm.dart';
import 'package:kmjmconnect/utils/appdata.dart';
import 'package:kmjmconnect/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIN extends StatefulWidget {
  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  bool isLoading = false;
  Future<void> checkLogin(BuildContext context) async {
    print('object');
   Navigator.push(context, MaterialPageRoute(builder:(context)=>Paytm()));
    // if (_email.text.isNotEmpty && _pass.text.isNotEmpty) {
    //   setState(() {
    //     // isLoading = !isLoading;
    //   });
    //   var url = '${AppData.apiURL}/login';
    //   try {
    //     var response = await http
    //         .post(url, body: {'email': _email.text, 'password': _pass.text});
    //     print('Response status: ${response.statusCode}');
    //     if (response.statusCode == 200) {
    //       var result = jsonDecode(response.body);
    //       print(result);
    //     }
    //   } catch (e) {
    //     print(e.toString());
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    Widget _sizeHeight(double hgt) {
      return SizedBox(
        height: hgt,
      );
    }

    return Scaffold(
      appBar: CustomWidgets.customAppBar(name: 'Sign in'),
      // backgroundColor: Colors.amber[400],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.amber,
                minRadius: 80.0,
              ),
              _sizeHeight(5.0),
              Text(
                'KMJM',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              Text('connect'),
              _sizeHeight(20.0),
              // Container(
              //   child: Column(
              //     children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                    hintText: 'E-mail', border: OutlineInputBorder()),
              ),
              _sizeHeight(10.0),
              TextField(
                controller: _pass,
                decoration: InputDecoration(
                   prefixIcon: Icon(Icons.lock),
                    hintText: 'Password', border: OutlineInputBorder()),
              ),
              _sizeHeight(20.0),
              isLoading == true
                  ? CircularProgressIndicator()
                  : FlatButton(
                      // color: Colors.white,
                      onPressed: () => checkLogin(context),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18.0),
                      ),
                    )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
