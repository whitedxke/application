import '../../../domain/entities/coin/coin.dart';
import '../../../domain/repositories/coins/coins_repository.dart';
import '../../models/coin/request/request_coin_dto.dart';
import '../../models/coin/response/response_coin_dto.dart';
import '../../network/coingecko_client.dart';

class CoinsRepositoryImpl implements CoinsRepository {
  final CoinGeckoAPIClient _coinGeckoAPIClient;

  CoinsRepositoryImpl({
    required CoinGeckoAPIClient coinGeckoAPIClient,
  }) : _coinGeckoAPIClient = coinGeckoAPIClient;

  @override
  Future<List<Coin>> getCoinsList() async {
    try {
      final response = await _coinGeckoAPIClient.getResponse(
        endpoint: '/coins/markets',
        queryParameters: RequestCoinDTO(
          currency: 'usd',
        ).toJson(),
      );
      final List<dynamic> data = response.data;
      return data.map((json) {
        final coinDTO = ResponseCoinDTO.fromJson(
          json,
        );
        return Coin.fromDTO(
          coinDTO,
        );
      }).toList();
    } catch (exception) {
      throw Exception(
        'Failed to load coins: $exception.',
      );
    }
  }
}
