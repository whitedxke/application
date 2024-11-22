part of 'coin_dto.dart';

CoinDTO _$CoinDTOFromJson(Map<String, dynamic> json) {
  return CoinDTO(
    id: json['id'] as String?,
    name: json['name'] as String?,
  );
}
