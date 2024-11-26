import '../../entities/coin/coin.dart';

abstract class CoinsRepository {
  Future<List<Coin>> getCoinsList();
}
