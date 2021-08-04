import 'package:flutter/material.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/subviews/fact_item.dart';

class FactsList extends StatelessWidget {
  const FactsList({
    Key? key,
    required this.facts,
  }) : super(key: key);

  final List<Fact> facts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: facts.length,
      itemBuilder: (context, index) => FactItem(item: facts[index]),
    );
  }
}
