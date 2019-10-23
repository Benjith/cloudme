import 'package:flutter/material.dart';

class Validation {
  static Future<bool> checkOTP(
    context,
    String title,
    String message, {
    String filename,
  }) async {
    return await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
         onWillPop: () async => false,
          child: AlertDialog(
            title: new Text(
              title,
              textAlign: TextAlign.center,
            ),
            content: new Text(message),
            actions: <Widget>[
              new FlatButton(
                child: new Text(
                  'OK',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                  return true;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
