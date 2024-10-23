import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FactsScreenController with ChangeNotifier {
  String _fact = "Loading..."; 

  String get fact => _fact;
  Future<void> getFact() async {
    final url = Uri.parse("https://catfact.ninja/fact");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print("data fetched");
        print(response.body);

        var covertedjson = jsonDecode(response.body);
        _fact = covertedjson["fact"].toString(); 
        notifyListeners();
        print(covertedjson["fact"].toString());
      }
    } catch (e) {
      print(e);
      _fact = "Error fetching data"; // Handle error
      notifyListeners();
    }
  }
}
