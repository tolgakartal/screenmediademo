part of 'facts_bloc.dart';

@immutable
abstract class FactsState extends Equatable {}

class FactsInitial extends FactsState {
  @override
  List<Object?> get props => [];
}

class FactsLoading extends FactsState {
  @override
  List<Object?> get props => [];
}

class FactsInitialised extends FactsState {
  final List<Fact> facts;

  FactsInitialised(this.facts);

  @override
  List<Object?> get props => [
        facts,
      ];
}

class FactsEmpty extends FactsState {
  FactsEmpty();

  @override
  List<Object?> get props => [];
}
