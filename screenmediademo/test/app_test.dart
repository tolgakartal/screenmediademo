import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';
import 'package:screenmediademo/facts/repository/local_provider.dart';
import 'package:screenmediademo/facts/repository/remote_provider.dart';
import 'package:screenmediademo/facts/view/facts_page.dart';
import 'package:screenmediademo/main.dart';

class MockRepository extends Mock implements FactsRepository {}

class MockRemoteProvider extends Mock implements FactsRemoteProvider {}

class MockLocalProvider extends Mock implements FactsLocalProvider {}

void main() {
  late FactsRepository repository;

  setUp(() {
    repository = MockRepository();
    GetIt.I.reset();
    GetIt.I.registerSingleton<FactsLocalProvider>(MockLocalProvider());
    GetIt.I.registerSingleton<FactsRemoteProvider>(MockRemoteProvider());
    GetIt.I.registerSingleton<FactsRepository>(MockRepository());
  });

  group('App', () {
    testWidgets('is a MaterialApp', (tester) async {
      expect(App(), isA<MaterialApp>());
    });

    testWidgets('renders FactsPage', (tester) async {
      when(repository.loadFacts).thenAnswer((_) async => []);
      await tester.pumpWidget(App());
      expect(find.byType(FactsPage), findsOneWidget);
    });
  });
}
