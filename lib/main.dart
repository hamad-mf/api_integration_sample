import 'package:api_integration_sample/Controller/facts_screen_controller.dart';
import 'package:api_integration_sample/View/Facts%20Screen/facts_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FactsScreenController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:FactsScreen() ,
      ),
    );
  }
}