import 'package:flutter/material.dart';
import 'package:screenmediademo/facts/models/fact.dart';

class FactItem extends StatelessWidget {
  const FactItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Fact item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        height: 64,
        width: MediaQuery.of(context).size.width - 64,
        child: Text(
          item.text,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
