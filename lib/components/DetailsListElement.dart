import 'package:flutter/material.dart';

class DetailListElement extends StatelessWidget {
  String label, desc;
  MaterialColor withColor;

  DetailListElement({this.label, this.desc, this.withColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).scaffoldBackgroundColor)),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(label,
                    style: TextStyle(fontSize: 10, fontFamily: 'Bimby'))),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(desc,
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Bimby',
                      fontWeight: FontWeight.bold,
                      color: withColor != null ? withColor : Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
