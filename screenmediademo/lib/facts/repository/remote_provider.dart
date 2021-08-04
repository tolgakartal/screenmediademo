import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/models/facts_response.dart';

class FactsRemoteProvider {
  static const timeout = 8 * 1000;

  const FactsRemoteProvider();

  /// Gets fresh facts
  ///
  /// Unfortunately - Api is down
  /// [link to issues](https://github.com/alexwohlbruck/cat-facts/issues)
  Future<List<Fact>> loadFacts() async {
    //
    // final responseJson = await HttpClient().dio.get(
    //   '/facts/random/',
    //   options: Options(receiveTimeout: timeout),
    //   queryParameters: {
    //     'animal_type': 'cat',
    //     'amount': 5,
    //   },
    // );

    final fakeData = await loadJsonData();

    return FactsResponse.fromJson(fakeData).facts;
  }

  Future<Map<String, dynamic>> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/mocks/example_response_facts.json');
    return json.decode(jsonText);
  }
}
