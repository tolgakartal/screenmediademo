part of 'facts_cubit.dart';

enum FactsStatus {
  empty,
  loading,
  error,
  success,
}

class FactsState extends Equatable {
  const FactsState._({
    this.status = FactsStatus.empty,
    this.facts = const <Fact>[],
  });

  const FactsState.empty() : this._();

  const FactsState.loading() : this._(status: FactsStatus.loading);

  const FactsState.error() : this._(status: FactsStatus.error);

  const FactsState.success(List<Fact> facts)
      : this._(
          status: FactsStatus.success,
          facts: facts,
        );

  final List<Fact> facts;
  final FactsStatus status;

  @override
  List<Object?> get props => [
        facts,
        status,
      ];
}
