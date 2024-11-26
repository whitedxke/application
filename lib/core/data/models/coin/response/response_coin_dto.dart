import 'package:json_annotation/json_annotation.dart';

part 'response_coin_dto.g.dart';

@JsonSerializable()
class ResponseCoinDTO {
  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "symbol")
  final String? symbol;

  @JsonKey(name: "image")
  final String? image;

  @JsonKey(name: "current_price")
  final double? price;

  ResponseCoinDTO({
    required this.name,
    required this.id,
    required this.symbol,
    required this.image,
    required this.price,
  });

  factory ResponseCoinDTO.fromJson(Map<String, dynamic> json) {
    return _$ResponseCoinDTOFromJson(
      json: json,
    );
  }
}
