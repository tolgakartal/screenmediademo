import 'package:hive_flutter/hive_flutter.dart';
import 'package:screenmediademo/facts/models/fact.dart';

class FactsLocalProvider {
  const FactsLocalProvider();

  Future<List<Fact>> getLocalFacts() async {
    final factsMap = await readAll<Fact>('facts');

    return factsMap.values.toList();
  }

  Future<void> removeAll() {
    return deleteAllKeys<Fact>('facts');
  }

  Future<void> cacheFacts(List<Fact> facts) async {
    await writeAll<Fact>(
      'facts',
      Map<String, Fact>.fromIterable(
        facts,
        key: (fact) => fact.id,
        value: (fact) => fact,
      ),
    );
  }

  @override
  Future<void> writeAll<T>(String table, Map<String, T> entries) async {
    var box = await _openHiveBox<T>(table);
    await box.putAll(entries);
  }

  Future<Map<String, T>> readAll<T>(String table) async {
    var box = await _openHiveBox<T>(table);
    return box.toMap().cast<String, T>();
  }

  Future<void> deleteAllKeys<T>(String table) async {
    var box = await _openHiveBox<T>(table);
    await box.clear();
  }

  Future<Box<T>> _openHiveBox<T>(String boxName) async {
    if (!(await Hive).isBoxOpen(boxName)) {
      return await (await Hive).openBox<T>(boxName);
    }

    return (await Hive).box<T>(boxName);
  }
}
