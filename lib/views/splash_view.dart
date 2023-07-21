import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mystery.png',
                width: 10,
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/counter');
                },
                child: const Text(
                  'Counter'
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/catfacts');
                },
                child: const Text(
                  'Cat Facts'
                )
              )
            ],
          ),
        )
      ),
    );
  }
}