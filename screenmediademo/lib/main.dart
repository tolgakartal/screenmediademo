import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenmediademo/facts/bloc/facts_bloc.dart';
import 'package:screenmediademo/facts/view/facts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FactsBloc()..add(FactsInitialise()),
      child: MaterialApp(
        title: 'Cats demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: FactsPage(),
      ),
    );
  }
}
