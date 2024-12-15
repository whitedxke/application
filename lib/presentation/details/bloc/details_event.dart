part of 'details_bloc.dart';

abstract class DetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadDetailsEvent extends DetailsEvent {
  final Coin _coin;

  LoadDetailsEvent({
    required Coin coin,
  }) : _coin = coin;

  @override
  List<Object?> get props => [
    _coin,
  ];
}
