import 'package:json_annotation/json_annotation.dart';

part 'request_coin_dto.g.dart';

@JsonSerializable()
class RequestCoinDTO {
  @JsonKey(name: "vs_currency")
  final String currency;

  RequestCoinDTO({
    required this.currency,
  });

  Map<String, dynamic> toJson() {
    return _$RequestCoinDTOToJson(
      instance: this,
    );
  }
}
