import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class TitleContentElement extends StatelessWidget {
  String title, content;

  TitleContentElement({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.start),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(content,
              textAlign: TextAlign.start,
              style: AppTheme()
                  .getBaseInfoTextStyle(context)
                  .copyWith(fontSize: 14)),
        )
      ],
    );
  }
}
