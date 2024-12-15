import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/entities/coin/coin.dart';
import '../bloc/coin_details_bloc.dart';

class CoinDetailsView extends StatefulWidget {
  final Coin _coin;

  const CoinDetailsView({
    super.key,
    required Coin coin,
  }) : _coin = coin;

  @override
  State<CoinDetailsView> createState() => _CoinDetailsViewState();
}

class _CoinDetailsViewState extends State<CoinDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinDetailsBloc, CoinDetailsState>(
      builder: (context, state) {
        if (state is CoinDetailsLoadedState) {
          return Center(
            child: Text(
              '${widget._coin.name}..',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          );
        }
        return Container();
      }
    );
  }
}
