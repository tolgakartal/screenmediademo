import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:screenmediademo/facts/cubit/facts_cubit.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';
import 'package:screenmediademo/facts/repository/local_provider.dart';
import 'package:screenmediademo/facts/repository/remote_provider.dart';

import 'app_test.dart';

Fact fakeFact = const Fact(
  id: '1',
  userId: 2,
  text: 'a fact',
  updatedAt: '2021',
  sendDate: null,
  deleted: false,
  source: null,
  type: null,
  status: null,
);

void main() {
  group('factsCubit', () {
    late FactsRepository repository;

    setUp(() {
      repository = MockRepository();
      GetIt.I.reset();
      GetIt.I.registerSingleton<FactsLocalProvider>(MockLocalProvider());
      GetIt.I.registerSingleton<FactsRemoteProvider>(MockRemoteProvider());
      GetIt.I.registerSingleton<FactsRepository>(MockRepository());
    });

    test('initial state is the FactsEmptyState', () {
      expect(
        FactsCubit(repository).state,
        const FactsState.empty(),
      );
    });

    blocTest<FactsCubit, FactsState>(
      'emits success after facts are fetched',
      build: () {
        when(repository.loadFacts).thenAnswer((_) async => [fakeFact]);
        return FactsCubit(repository);
      },
      act: (cubit) => cubit.fetchFacts(),
      expect: () => [
        const FactsState.loading(),
        FactsState.success([fakeFact]),
      ],
      verify: (_) => verify(repository.loadFacts).called(1),
    );
  });
}
