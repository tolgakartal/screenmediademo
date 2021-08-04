import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:screenmediademo/facts/bloc/facts_bloc.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';
import 'package:screenmediademo/facts/repository/local_provider.dart';
import 'package:screenmediademo/facts/repository/remote_provider.dart';
import 'package:screenmediademo/facts/view/facts_page.dart';
import 'package:screenmediademo/utils/hive_utils.dart';

void main() async {
  _registerDependencies();
  await Hive.initFlutter();
  HiveUtils.registerAdapters(Hive);
  runApp(App());
}

class App extends MaterialApp {
  App()
      : super(
          home: const FactsPage(),
          theme: ThemeData(
            primaryColor: Colors.white,
          ),
        );
}

void _registerDependencies() {
  GetIt.I.registerSingleton<FactsLocalProvider>(FactsLocalProvider());
  GetIt.I.registerSingleton<FactsRemoteProvider>(FactsRemoteProvider());
  GetIt.I.registerSingleton<FactsRepository>(FactsRepository(
    GetIt.I<FactsLocalProvider>(),
    GetIt.I<FactsRemoteProvider>(),
  ));
}
