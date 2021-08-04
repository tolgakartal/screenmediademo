import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenmediademo/facts/bloc/facts_bloc.dart';

class FactsPage extends StatelessWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facts about Cats'),
      ),
      body: Container(
        height: 500,
        child: ListView(),
      ),
    );
  }
}

class FactsList extends StatelessWidget {
  const FactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FactsBloc, FactsState>(builder: (context, state) {
      if (state == FactsLoading) {
        return const CircularProgressIndicator();
      } else if (state is FactsInitialised) {
        return ListView.builder(
          itemCount: state.facts.length,
          itemBuilder: (context, index) => Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(state.facts[index].text),
              ],
            ),
          ),
        );
      } else if (state is FactsEmpty) {
        return Container(
          child: Center(
            child: Text('No data to display'),
          ),
        );
      }

      return Container(
        child: Text('Error'),
      );
    });
  }
}
