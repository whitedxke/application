part of 'coins_bloc.dart';

abstract class CoinsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchCoinsEvent extends CoinsEvent {}
