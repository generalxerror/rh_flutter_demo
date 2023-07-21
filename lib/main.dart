import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rh_flutter_demo/views/counter_view.dart';
import 'package:rh_flutter_demo/views/catfacts_view.dart';
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
    return GetMaterialApp(
      home: SplashView(),
      getPages: [
        GetPage(name: '/splash', page: () => SplashView()),
        GetPage(name: '/counter', page: () => CounterView()),
        GetPage(name: '/catfacts', page: () => CatFactsView()),
      ],
    );
  }
}
