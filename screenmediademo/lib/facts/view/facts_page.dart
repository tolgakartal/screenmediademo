import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:screenmediademo/facts/cubit/facts_cubit.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';
import 'package:screenmediademo/facts/subviews/facts_empty.dart';
import 'package:screenmediademo/facts/subviews/facts_error.dart';
import 'package:screenmediademo/facts/subviews/facts_list.dart';
import 'package:screenmediademo/facts/subviews/facts_loading.dart';

class FactsPage extends StatelessWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facts about Cats'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              child: Icon(Icons.clear_all_rounded),
              onTap: () {
                // remove all facts in cache
              },
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => FactsCubit(GetIt.I<FactsRepository>())..fetchFacts(),
        child: FactsView(),
      ),
    );
  }
}

class FactsView extends StatelessWidget {
  const FactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FactsCubit>().state;
    switch (state.status) {
      case FactsStatus.empty:
        return FactsEmptyView();
      case FactsStatus.error:
        return FactsErrorView();
      case FactsStatus.loading:
        return const FactsLoadingView();
      case FactsStatus.success:
        return FactsList(facts: state.facts);
      default:
        return Container();
    }
  }
}
