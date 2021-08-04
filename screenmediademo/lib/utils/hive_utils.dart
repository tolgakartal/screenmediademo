import 'package:hive_flutter/hive_flutter.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/models/status.dart';
import 'package:screenmediademo/facts/models/facts_response.dart';

class HiveUtils {
  static const boxName = 'main';
  static const factsResponseId = 0;
  static const factId = 1;
  static const factStatusId = 2;

  static registerAdapters(HiveInterface hive) {
    hive.registerAdapter(StatusAdapter());
    hive.registerAdapter(FactAdapter());
    hive.registerAdapter(FactsResponseAdapter());
  }
}
