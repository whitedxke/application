import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/entities/coin/coin.dart';

part 'coin_details_event.dart';
part 'coin_details_state.dart';

class CoinDetailsBloc extends Bloc<CoinDetailsEvent, CoinDetailsState> {
  CoinDetailsBloc() : super(CoinDetailsInitialState()) {
    on<LoadCoinDetailsEvent>(_onLoadCoinDetailsEvent);
  }

  Future<void> _onLoadCoinDetailsEvent(
    LoadCoinDetailsEvent event,
    Emitter<CoinDetailsState> emit,
  ) async {
    try {
      final coin = event._coin;
      emit(
        CoinDetailsLoadedState(coin: coin),
      );
    } catch (exception) {
      throw Exception(
        'Exception: $Exception.',
      );
    }
  }
}
