import 'package:get_it/get_it.dart';

import '../core/data/network/coingecko_client.dart';
import '../core/data/repositories/coins/coins_repository_impl.dart';
import '../core/domain/repositories/coins/coins_repository.dart';
import '../core/domain/usecases/coins/get_coins_use_case.dart';
import '../presentation/coins/coins_view_model.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Description: Register API Client.
  getIt.registerLazySingleton(
    () {
      return CoinGeckoAPIClient();
    },
  );

  // Description: Register repository.
  getIt.registerLazySingleton<CoinsRepository>(
    () {
      return CoinsRepositoryImpl(
        coinGeckoAPIClient: getIt<CoinGeckoAPIClient>(),
      );
    },
  );

  // Description: Register use case.
  getIt.registerLazySingleton(
    () {
      return GetCoinsUseCase(
        coinsRepository: getIt<CoinsRepository>(),
      );
    },
  );

  // Description: Register ViewModel.
  getIt.registerFactory(
    () {
      return CoinsViewModel(
        getCoinsUseCase: getIt<GetCoinsUseCase>(),
      );
    },
  );
}
