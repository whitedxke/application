import 'package:get_it/get_it.dart';

import '../core/data/network/coingecko_client.dart';
import '../core/data/repositories/coins/coins_repository_impl.dart';
import '../core/domain/repositories/coins/coins_repository.dart';
import '../core/domain/usecases/coins/get_coins_use_case.dart';
import '../presentation/coin_details/bloc/coin_details_bloc.dart';
import '../presentation/coins/bloc/coins_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<CoinGeckoAPIClient>(
    () => CoinGeckoAPIClient(),
  );

  getIt.registerLazySingleton<CoinsRepository>(
    () => CoinsRepositoryImpl(
      coinGeckoAPIClient: getIt<CoinGeckoAPIClient>(),
    ),
  );

  getIt.registerLazySingleton<GetCoinsUseCase>(
    () => GetCoinsUseCase(
      coinsRepository: getIt<CoinsRepository>(),
    ),
  );

  getIt.registerFactory<CoinsBloc>(
    () => CoinsBloc(
      getCoinsUseCase: getIt<GetCoinsUseCase>(),
    ),
  );

  getIt.registerFactory<CoinDetailsBloc>(
    () => CoinDetailsBloc(),
  );
}
