import 'package:flutter/material.dart';

class FactsLoadingView extends StatelessWidget {
  const FactsLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const SizedBox(
        width: 100,
        height: 100,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
