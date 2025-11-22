import 'dart:convert';

import 'package:flutter/services.dart';

class JsonService {
  static Future<List> lodeJson() async {
    String jsonData = await rootBundle.loadString("assets/food.json");
    return jsonDecode(jsonData);
  }
}
