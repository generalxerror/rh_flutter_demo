import 'package:flutter/material.dart';

class CatFactsView extends StatelessWidget {
  CatFactsView({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Cat Facts'.toUpperCase(),
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Column(
            children: [
              Text('1. First fact'),
              Text('2. Second fact'),
              Text('3. Third fact'),
            ],
          )
        ],
      ),
    );
  }
}