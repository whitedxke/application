import '../../../domain/entities/coin/coin.dart';
import '../../../domain/repositories/coins/coins_repository.dart';
import '../../models/coin/coin_dto.dart';
import '../../network/coingecko_client.dart';

class CoinsRepositoryImpl implements CoinsRepository {
  final CoinGeckoAPIClient apiClient;

  CoinsRepositoryImpl(
    this.apiClient,
  );

  @override
  Future<List<Coin>> getCoinsList() async {
    try {
      final response = await apiClient.getResponse(
        endpoint: '/coins/list',
      );
      final List<dynamic> data = response.data;

      return data.map((json) {
        final coinDTO = CoinDTO.fromJson(
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
