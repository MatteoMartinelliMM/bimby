import 'file:///C:/Users/matteoma/StudioProjects/bimby/lib/screen/Homepage.dart';
import 'package:bimby/BimbyBloc.dart';
import 'package:bimby/model/Cliente.dart';
import 'package:bimby/screen/ClienteDetail.dart';
import 'package:bimby/screen/ListaClienti.dart';
import 'package:bimby/screen/MapScreen.dart';
import 'package:bimby/screen/WebView.dart';
import 'package:bimby/services/DbRepository.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ClienteAdapter());
  await Hive.openBox<Cliente>(ClientiBox);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Provider(
      create: (context) => BimbyBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme().getAppTheme(context),
        home: Homepage(),
        initialRoute: '/',
        routes: {
          ListaClienti.route: (context) => ListaClienti(),
          WebView.route: (context) => WebView(),
          ClienteDetail.route: (context) => ClienteDetail(),
          MapScreen.route: (context) => MapScreen()
        },
      ),
    );
  }
}
