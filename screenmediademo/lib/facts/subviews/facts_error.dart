import 'package:flutter/material.dart';

class FactsErrorView extends StatelessWidget {
  const FactsErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        child: Text(
          "Sorry!, can't fetch facts right now",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
