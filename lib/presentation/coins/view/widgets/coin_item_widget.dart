import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/domain/entities/coin/coin.dart';

class CoinItemWidget extends StatelessWidget {
  final Coin _coin;

  const CoinItemWidget({
    super.key,
    required Coin coin,
  }) : _coin = coin;

  @override
  Widget build(BuildContext context) {
    final price = _coin.price
        .toStringAsFixed(
          2,
        )
        .toString();
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
                  image: _coin.image,
                ),
                _buildCoinTitleWidget(
                  name: _coin.name,
                  symbol: _coin.symbol,
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

  Widget _buildCoinImageWidget({
    required String image,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16.w,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1.h,
            color: Colors.white60,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            50.h,
          ),
          child: Image.network(
            image,
            height: 48.h,
            width: 48.h,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _buildCoinTitleWidget({
    required String name,
    required String symbol,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 4.h,
          ),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.h,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          symbol,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
