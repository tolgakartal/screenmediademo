import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';

part 'facts_state.dart';

class FactsCubit extends Cubit<FactsState> {
  FactsCubit() : super(FactsState.empty());

  Future<void> fetchFacts() async {
    try {
      emit(FactsState.loading());
      final facts = await FactsRepository().loadFacts();
      emit(FactsState.success(facts));
    } on Exception {
      emit(const FactsState.error());
    }
  }

  Future<void> clearFacts() async {
    FactsRepository().clearCache();
  }
}
