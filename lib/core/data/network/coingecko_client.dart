import 'package:dio/dio.dart';

import 'coingecko_key.dart';

class CoinGeckoAPIClient {
  static const String _baseCoinGeckoUrl = "https://api.coingecko.com/api/v3";

  String get _baseCoinGeckoAPIKey => CoinGeckoAPIKey.defaultCoinGeckoAPIKey;

  late final Dio _dio;

  CoinGeckoAPIClient() {
    _dio = Dio()
      ..options.baseUrl = _baseCoinGeckoUrl
      ..options.connectTimeout = const Duration(
        seconds: 10,
      )
      ..options.receiveTimeout = const Duration(
        seconds: 10,
      )
      ..options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'x-cg-demo-api-key': _baseCoinGeckoAPIKey,
      };
  }

  Future<Response> getResponse({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
  }
}
