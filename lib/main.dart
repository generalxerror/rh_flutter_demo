import 'package:flutter/material.dart';
import 'package:rh_flutter_demo/views/splash_view.dart';

Future<void> main() async {
  runApp(const AssetsApp());
}

class AssetsApp extends StatelessWidget {
  const AssetsApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView()
    );
  }
}
