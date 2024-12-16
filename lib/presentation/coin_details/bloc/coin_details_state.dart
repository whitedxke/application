part of 'coin_details_bloc.dart';

abstract class CoinDetailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CoinDetailsInitialState extends CoinDetailsState {}

class CoinDetailsLoadedState extends CoinDetailsState {
  final Coin _coin;

  CoinDetailsLoadedState({
    required Coin coin,
  }) : _coin = coin;

  @override
  List<Object?> get props => [
    _coin,
  ];
}
