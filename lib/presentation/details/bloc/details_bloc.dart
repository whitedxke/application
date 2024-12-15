import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/entities/coin/coin.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitialState()) {
    on<LoadDetailsEvent>(_onLoadDetailsEvent);
  }

  Future<void> _onLoadDetailsEvent(
    LoadDetailsEvent event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      final coin = event._coin;
      emit(
        DetailsLoadedState(coin: coin),
      );
    } catch (exception) {
      throw Exception(
        'Exception: $Exception.',
      );
    }
  }
}
