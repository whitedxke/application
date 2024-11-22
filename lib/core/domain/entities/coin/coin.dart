import '../../../data/models/coin/coin_dto.dart';

class Coin {
  final String id;
  final String name;

  Coin({
    required this.id,
    required this.name,
  });

  factory Coin.fromDTO(CoinDTO dto) {
    return Coin(
      id: dto.id ?? " ",
      name: dto.name ?? " ",
    );
  }
}
