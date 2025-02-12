import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:valentine_app/core/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) {
        return MaterialApp.router(
          title: 'Material App',
          routerConfig: goRouter,
          theme: ThemeData(fontFamily: "Peachi"),
        );
      },
    );
  }
}
