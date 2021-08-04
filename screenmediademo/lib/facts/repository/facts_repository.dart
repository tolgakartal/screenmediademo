import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/utils/http_client.dart';
import 'package:screenmediademo/facts/models/facts_response.dart';

class FactsRepository {
  static final FactsRepository _singletonInstance = FactsRepository._singleton();
  FactsRepository._singleton();
  factory FactsRepository() {
    return _singletonInstance;
  }

  Future<List<Fact>> loadFacts() async {
    final responseJson = await HttpClient().dio.get(
      '/facts/random',
      queryParameters: {
        'animal_type': 'cat',
        'amount': 5,
      },
    );

    return FactsResponse.fromJson(responseJson.data).facts;
  }

  Future<void> clearCache() async {
    // clean facts cache
  }
}
