part of 'response_coin_dto.dart';

ResponseCoinDTO _$ResponseCoinDTOFromJson({
  required Map<String, dynamic> json,
}) {
  return ResponseCoinDTO(
    name: json['name'] as String?,
    id: json['id'] as String?,
    symbol: json['symbol'] as String?,
    image: json['image'] as String?,
    price: (json['current_price'] as num?)?.toDouble(),
  );
}
