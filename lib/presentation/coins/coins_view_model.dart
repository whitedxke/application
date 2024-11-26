import 'package:flutter/material.dart';

import '../../core/domain/entities/coin/coin.dart';
import '../../core/domain/usecases/coins/get_coins_use_case.dart';

class CoinsViewModel extends ChangeNotifier {
  final GetCoinsUseCase _getCoinsUseCase;

  CoinsViewModel({
    required GetCoinsUseCase getCoinsUseCase,
  }) : _getCoinsUseCase = getCoinsUseCase;

  List<Coin> _coins = [];
  List<Coin> get coins => _coins;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchCoinsList() async {
    _isLoading = true;
    notifyListeners();

    try {
      _coins = await _getCoinsUseCase();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
