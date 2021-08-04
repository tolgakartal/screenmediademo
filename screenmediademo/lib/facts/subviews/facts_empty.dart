import 'package:flutter/material.dart';

class FactsEmptyView extends StatelessWidget {
  const FactsEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        child: Text(
          'No facts are available',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
