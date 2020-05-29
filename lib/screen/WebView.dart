import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebView extends StatelessWidget {
  static const String route = '/WebView';

  @override
  Widget build(BuildContext context) {
    String url = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: WebviewScaffold(
        url: url,
        mediaPlaybackRequiresUserGesture: false,
        withLocalStorage: true,
        hidden: true,
        initialChild: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
