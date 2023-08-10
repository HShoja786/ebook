import 'package:ebook/MobLayout.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:ebook/WebLayout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return MaterialApp(routes: <String, WidgetBuilder>{
        "/about": (BuildContext context) => const MobLayout(),
        "/book_category": (BuildContext context) => const MobLayout(),
      }, initialRoute: "/", home: const MobLayout());
    } else {
      return MaterialApp(routes: <String, WidgetBuilder>{
        "/about": (BuildContext context) => const WebLayout(),
        "/book_category": (BuildContext context) => const WebLayout(),
      }, initialRoute: "/", home: const WebLayout());
    }
  }
}
