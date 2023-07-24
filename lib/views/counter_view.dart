import 'dart:developer';

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({
    super.key
  });

  @override
  State<CounterView> createState() => _CounterViewState();
}
class _CounterViewState extends State<CounterView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text('ggez'),
        onPressed: () {
          count++;
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