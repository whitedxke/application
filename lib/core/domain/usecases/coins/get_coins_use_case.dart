import '../../entities/coin/coin.dart';
import '../../repositories/coins/coins_repository.dart';

class GetCoinsUseCase {
  final CoinsRepository repository;

  GetCoinsUseCase(
    this.repository,
  );

  Future<List<Coin>> call() async {
    return await repository.getCoinsList();
  }
}
