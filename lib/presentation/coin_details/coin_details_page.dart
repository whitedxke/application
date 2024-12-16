import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/domain/entities/coin/coin.dart';
import 'bloc/coin_details_bloc.dart';
import 'view/coin_details_view.dart';

class CoinDetailsPage extends StatefulWidget {
  final Coin _coin;

  const CoinDetailsPage({
    super.key,
    required Coin coin,
  }) : _coin = coin;

  @override
  State<CoinDetailsPage> createState() => _CoinDetailsPageState();
}

class _CoinDetailsPageState extends State<CoinDetailsPage> {
  @override
  void initState() {
    context.read<CoinDetailsBloc>().add(
      LoadCoinDetailsEvent (
        coin: widget._coin,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: CoinDetailsView(
          coin: widget._coin,
        ),
      ),
    );
  }
}
