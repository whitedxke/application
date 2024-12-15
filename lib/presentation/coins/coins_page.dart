import 'package:flutter/material.dart';

import '../../core/domain/entities/coin/coin.dart';
import '../coin_details/coin_details_page.dart';
import 'view/coins_view.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  @override
  Widget build(BuildContext context) {
    CoinsDelegate delegate = CoinsDelegate(
      context: context,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: CoinsView(
          protocol: delegate,
        ),
      ),
    );
  }
}

class CoinsDelegate extends CoinsProtocol {
  final BuildContext context;

  CoinsDelegate({
    required this.context,
  });

  @override
  void onNavigateToDetails(Coin coin) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoinDetailsPage(coin: coin),
      ),
    );
  }
}
