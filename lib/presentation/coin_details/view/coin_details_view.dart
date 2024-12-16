import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/domain/entities/coin/coin.dart';
import '../bloc/coin_details_bloc.dart';

part 'coins_details_view.description.part.dart';
part 'coins_details_view.header.part.dart';

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
    final symbol = widget._coin.symbol;
    final name = widget._coin.name;
    final price = widget._coin.price;

    return BlocBuilder<CoinDetailsBloc, CoinDetailsState>(
      builder: (context, state) {
        if (state is CoinDetailsLoadedState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCoinDetailsHeader(
                title: name,
                onBackTap: () {
                  Navigator.pop(context);
                },
              ),
              _buildCoinDetailsDescriptionWidget(
                symbol: symbol,
                name: name,
                price: price,
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
