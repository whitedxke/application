part of 'coin_details_bloc.dart';

abstract class CoinDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadCoinDetailsEvent extends CoinDetailsEvent {
  final Coin _coin;

  LoadCoinDetailsEvent({
    required Coin coin,
  }) : _coin = coin;

  @override
  List<Object?> get props => [
    _coin,
  ];
}
