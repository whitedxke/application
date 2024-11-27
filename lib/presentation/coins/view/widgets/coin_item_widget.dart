import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/domain/entities/coin/coin.dart';

part 'coin_item.image.part.dart';
part 'coin_item.title.part.dart';

class CoinItemWidget extends StatelessWidget {
  final Coin _coin;

  const CoinItemWidget({
    super.key,
    required Coin coin,
  }) : _coin = coin;

  @override
  Widget build(BuildContext context) {
    final image = _coin.image;
    final name = _coin.name;
    final symbol = _coin.symbol;
    final price = _coin.price.toStringAsFixed(2).toString();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        border: Border.all(
          width: 1.h,
          color: Colors.white60,
        ),
        color: Colors.white10,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: 16.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildCoinImageWidget(
                  image: image,
                ),
                _buildCoinTitleWidget(
                  name: name,
                  symbol: symbol,
                ),
              ],
            ),
            Text(
              price,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.h,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
