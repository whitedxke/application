import '../../entities/coin/coin.dart';
import '../../repositories/coins/coins_repository.dart';

class GetCoinsUseCase {
  final CoinsRepository _coinsRepository;

  GetCoinsUseCase({
    required CoinsRepository coinsRepository,
  }) : _coinsRepository = coinsRepository;

  Future<List<Coin>> call() async {
    return await _coinsRepository.getCoinsList();
  }
}
