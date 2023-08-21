import 'package:flutter/material.dart';
import 'package:rh_flutter_demo/views/catfacts_view.dart';
import 'package:rh_flutter_demo/views/counter_view.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CounterView()),
                  );
                },
                child: const Text(
                  'Counter'
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CatFactsView()),
                  );
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