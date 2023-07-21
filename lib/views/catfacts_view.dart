import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rh_flutter_demo/controllers/main_controller.dart';
import 'package:rh_flutter_demo/models/fact.dart';

class CatFactsView extends StatelessWidget {
  CatFactsView({
    super.key
  });

  final MainController _mainController = Get.put(MainController());

  // Remove scaffold and safearea and ask the candidate to repair it
  // Remove the whole Obx bit, ask candidate to redo it

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text('get'),
        onPressed: () async {
          _mainController.getAllCatFacts();
        }
      ),
      body: SafeArea(
        child: Center(
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
              Obx(() {
                final loading = _mainController.loading.value;
                final facts = _mainController.facts;

                if(loading) {
                  return const Expanded(
                    child:  Center(
                      child: Text('loading')
                    )
                  );
                }

                if(facts.isNotEmpty) {
                  return Column(
                    children: [
                      for(Fact fact in facts)
                        Text(
                          fact.id.toString() + '. ' + fact.text
                        )
                    ],
                  );
                } else {
                  return const Expanded(
                    child:  Center(
                      child: Text('nothing to show')
                    )
                  );
                }


              })
            ],
          ),
        ),
      ),
    );
  }
}