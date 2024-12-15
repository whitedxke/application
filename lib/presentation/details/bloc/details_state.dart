part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DetailsInitialState extends DetailsState {}

class DetailsLoadedState extends DetailsState {
  final Coin _coin;

  DetailsLoadedState({
    required Coin coin,
  }) : _coin = coin;

  @override
  List<Object?> get props => [
    _coin,
  ];
}
