import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rh_flutter_demo/mock_services/cat_facts.dart';
import 'package:rh_flutter_demo/models/fact.dart';

class MainController extends GetxController {
  final RxList<Fact> facts = RxList<Fact>([]);
  final RxBool loading = false.obs;

  Dio dio = Dio(
    BaseOptions(
      headers: {
        HttpHeaders.acceptHeader: 'application/json'
      }
    )
  );

  getAllCatFacts() async {
    loading.value = true;
    facts.clear();

    final service = CatFactsService();
    final List<int> factsIds = [0,1,2,3,4,5];

    // factsIds.forEach((factId) async {
    //   Fact response = await service.getFact(factId);
    //   facts.add(response);
    // });

    for(int factId in factsIds) {
      Fact response = await service.getFact(factId);
      facts.add(response);
    }

    loading.value = false;
  }
}