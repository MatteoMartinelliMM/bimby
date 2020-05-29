import 'package:bimby/screen/WebView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, WebView.route,
                  arguments: 'https://www.facebook.com/BimbyItalia/'),
              child: Text('',
                  style: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white))),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, WebView.route,
                  arguments:
                      'https://twitter.com/BimbyItalia?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor'),
              child: Text('',
                  style: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white))),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, WebView.route,
                  arguments:
                      'https://www.youtube.com/channel/UC6l_ge1Wl81j_0KJSUHHaww'),
              child: Text('',
                  style: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white))),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, WebView.route,
                  arguments: 'https://www.instagram.com/bimbyitalia/'),
              child: Text('',
                  style: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white))),
        ),
        Flexible(
          child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, WebView.route,
                  arguments: 'https://www.ricettario-bimby.it/'),
              child: Text('',
                  style: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white))),
        )
      ],
    );
  }
}
