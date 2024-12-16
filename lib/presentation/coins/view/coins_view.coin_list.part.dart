part of 'coins_view.dart';

SliverChildBuilderDelegate _buildCoinsListWidget({
  required List<Coin> coins,
  required void Function(Coin) onTap,
}) {
  return SliverChildBuilderDelegate(
    (context, index) {
      final coin = coins[index];
      final isLast = index == coins.length - 1;
      final isFirst = index == 0;
      return Padding(
        padding: EdgeInsets.only(
          bottom: isLast ? 24.h : 16.h,
          top: isFirst ? 12.h : 0.h,
        ),
        child: CoinItemWidget(
          coin: coin,
          onTap: onTap,
        ),
      );
    },
    childCount: coins.length,
  );
}
