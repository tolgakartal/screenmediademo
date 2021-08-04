import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/repository/local_provider.dart';
import 'package:screenmediademo/facts/repository/remote_provider.dart';

class FactsRepository {
  final FactsLocalProvider _localProvider;
  final FactsRemoteProvider _remoteProvider;

  FactsRepository(
    this._localProvider,
    this._remoteProvider,
  );

  Future<List<Fact>>? loadFacts() async {
    try {
      final facts = await _remoteProvider.loadFacts();
      await _localProvider.cacheFacts(facts);
      return facts;
    } on Exception {
      // When fresh api data fails, fetch local data
      return await _localProvider.getLocalFacts();
    }
  }

  Future<void> clearCache() async {
    await _localProvider.removeAll();
  }
}
