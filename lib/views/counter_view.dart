import 'dart:developer';

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({
    super.key
  });

  @override
  State<CounterView> createState() => _CounterViewState();
}

// Ask to refactor to use main controller

class _CounterViewState extends State<CounterView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text('ggez'),
        onPressed: () {
          // log show correct, screen doesnt, why?
          count++;
          log(count.toString());
        }
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            count.toString()
          )
        )
      ),
    );
  }
}