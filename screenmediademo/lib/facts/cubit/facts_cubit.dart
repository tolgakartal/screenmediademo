import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/facts/repository/facts_repository.dart';

part 'facts_state.dart';

class FactsCubit extends Cubit<FactsState> {
  FactsCubit(this._factsRepository) : super(FactsState.empty());

  final FactsRepository _factsRepository;

  Future<void> fetchFacts() async {
    try {
      emit(FactsState.loading());
      final facts = await _factsRepository.loadFacts();
      if (facts != null && facts.isNotEmpty) {
        emit(FactsState.success(facts));
      } else {
        emit(FactsState.empty());
      }
    } on Exception {
      emit(const FactsState.error());
    }
  }

  Future<void> clearFacts() async {
    emit(FactsState.loading());
    await _factsRepository.clearCache();
    emit(FactsState.empty());
  }
}
