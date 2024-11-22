import 'package:json_annotation/json_annotation.dart';

part 'coin_dto.g.dart';

@JsonSerializable()
class CoinDTO {
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "name")
  final String? name;

  CoinDTO({
    required this.id,
    required this.name,
  });

  factory CoinDTO.fromJson(Map<String, dynamic> json) {
    return _$CoinDTOFromJson(
      json,
    );
  }
}
