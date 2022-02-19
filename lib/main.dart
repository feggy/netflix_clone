import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/routes/pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Netflix',
      theme: ThemeData(
        fontFamily: 'HelveticaNeue',
      ),
      routerDelegate: MyPages.routes.routerDelegate,
      routeInformationParser: MyPages.routes.routeInformationParser,
    );
  }
}
