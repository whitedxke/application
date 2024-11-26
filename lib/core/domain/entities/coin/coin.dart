import '../../../data/models/coin/response/response_coin_dto.dart';
import '../../../utils/extensions/double_extension.dart';
import '../../../utils/extensions/string_extension.dart';

class Coin {
  final String name;
  final String id;
  final String symbol;
  final String image;
  final double price;

  Coin({
    required this.name,
    required this.id,
    required this.symbol,
    required this.image,
    required this.price,
  });

  factory Coin.fromDTO(ResponseCoinDTO dto) {
    return Coin(
      name: dto.name.orEmpty(),
      id: dto.id.orEmpty(),
      symbol: dto.symbol.orEmpty(),
      image: dto.image.orEmpty(),
      price: dto.price.orEmpty(),
    );
  }
}
