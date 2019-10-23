import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {

static Widget customAppBar(String name) => AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(name,style: TextStyle(color: Colors.black),),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}