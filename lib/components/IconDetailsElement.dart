import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class IconDetailsElement extends StatefulWidget {
  bool selected, withBorder;
  String icon;

  int withCounter;

  @override
  State<StatefulWidget> createState() {
    return new IconsDetailsState();
  }

  IconDetailsElement(
      {this.icon, this.selected, this.withBorder, this.withCounter});
}

class IconsDetailsState extends State<IconDetailsElement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(
                    color: widget.withBorder
                        ? Theme.of(context).scaffoldBackgroundColor
                        : Colors.white))),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Align(
            alignment: widget.withBorder ? Alignment.center : Alignment.centerLeft,
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 18, color: Colors.black, fontFamily: 'Bimby'),
                    children: <TextSpan>[
                  TextSpan(
                      text: widget.icon,
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Bimby',
                          color: widget.selected
                              ? Theme.of(context).accentColor
                              : Theme.of(context).scaffoldBackgroundColor)),
                  widget.withCounter != null
                      ? TextSpan(
                          text: widget.withCounter.toString(),
                          style: AppTheme().getMainInfoTextStyle(context).copyWith(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontFamily: 'Bimby'),
                        )
                      : TextSpan(),
                ])),
          ),
        ),
      ),
    );
  }
}
