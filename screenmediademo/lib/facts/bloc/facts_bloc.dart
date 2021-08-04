import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';

part 'facts_event.dart';
part 'facts_state.dart';

class FactsBloc extends Bloc<FactsEvent, FactsState> {
  FactsBloc() : super(FactsInitial());

  @override
  Stream<FactsState> mapEventToState(
    FactsEvent event,
  ) async* {
    if (event is FactsInitialise) {
      yield* _getFactsState();
    }
  }

  Stream<FactsState> _getFactsState() async* {
    yield FactsLoading();
    final facts = await FactsRepository().loadFacts();
    yield FactsInitialised(facts);
  }
}
