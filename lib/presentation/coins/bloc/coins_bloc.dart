import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entities/coin/coin.dart';
import '../../../core/domain/usecases/coins/get_coins_use_case.dart';

part 'coins_event.dart';
part 'coins_state.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  final GetCoinsUseCase _getCoinsUseCase;

  CoinsBloc({
    required GetCoinsUseCase getCoinsUseCase,
  })  : _getCoinsUseCase = getCoinsUseCase,
        super(CoinsInitialState()) {

    on<FetchCoinsEvent>(_onFetchCoinsEvent);
  }

  Future<void> _onFetchCoinsEvent(
    FetchCoinsEvent event,
    Emitter<CoinsState> emit,
  ) async {
    emit(CoinsLoadingState());

    try {
      final coins = await _getCoinsUseCase();
      emit(
        CoinsLoadedState(coins: coins),
      );
    } catch (exception) {
      final message = exception.toString();
      emit(
        CoinsErrorState(message: message),
      );
    }
  }
}
