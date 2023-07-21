import 'dart:convert';

Fact factFromJson(String str) => Fact.fromJson(json.decode(str));

class Fact {
  int id;
  String text;

  Fact({
    required this.id,
    required this.text
  });

  factory Fact.fromJson(Map<String, dynamic> json) => Fact(
    id: json["id"],
    text: json["text"]
  );
}
