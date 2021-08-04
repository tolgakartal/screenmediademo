part of 'facts_bloc.dart';

@immutable
abstract class FactsEvent extends Equatable {}

class FactsInitialise extends FactsEvent {
  @override
  List<Object?> get props => [];
}
