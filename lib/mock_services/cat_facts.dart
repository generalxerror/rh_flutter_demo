import 'dart:math';

import 'package:rh_flutter_demo/models/fact.dart';

class CatFactsService {

  List<Fact> facts = [
    Fact(
      id: 1,
      text: "Owning a cat can reduce the risk of stroke and heart attack by a third."
    ),
    Fact(
      id: 2,
      text: "Cats go Meow"
    ),
    Fact(
      id: 3,
      text: "Some cats go Purr"
    ),
    Fact(
      id: 4,
      text: "My cat goes '*slap* where the food at?'"
    ),
    Fact(
      id: 5,
      text: "Babou likes to serpentine"
    ),
    Fact(
      id: 6,
      text: "Babou thinks he's people"
    )
  ];

  Future<Fact> getFact(int id) {
    int min = 200;
    int max = 2000;
    Random random = Random();
    int randomNumber = min + random.nextInt(max - min + 1);

    return Future.delayed(Duration(milliseconds: randomNumber), () {
      return facts[id];
    });
  }
}