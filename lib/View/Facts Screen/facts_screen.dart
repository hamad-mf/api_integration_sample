import 'package:api_integration_sample/Controller/facts_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<FactsScreenController>().getFact();
      }),
      body: Center(
        child: Consumer<FactsScreenController>(
            builder: (context, factController, child) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(factController.fact)],
                )),
      ),
    );
  }
}
