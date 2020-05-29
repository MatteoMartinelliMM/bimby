import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                    text: 'Ciao ',
                    style: AppTheme().getBaseInfoTextStyle(context)),
                TextSpan(
                  text: "Franco :) ",
                  style: AppTheme().getMainInfoTextStyle(context),
                )
              ])),
        ),
      ),
    );
  }
}
