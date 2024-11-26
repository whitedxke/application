part of 'coins_bloc.dart';

abstract class CoinsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CoinsInitialState extends CoinsState {}

class CoinsLoadingState extends CoinsState {}

class CoinsLoadedState extends CoinsState {
  final List<Coin> _coins;

  CoinsLoadedState({
    required List<Coin> coins,
  }) : _coins = coins;

  List<Coin> get coins => _coins;

  @override
  List<Object?> get props => [
    _coins,
  ];
}

class CoinsErrorState extends CoinsState {
  final String _message;

  CoinsErrorState({
    required String message,
  }) : _message = message;

  String get message => _message;

  @override
  List<Object?> get props => [
    _message,
  ];
}
