part of 'coins_view.dart';

Widget _buildCoinsListWidget({
  required List<Coin> coins,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 16.w,
    ),
    child: ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: coins.length,
      itemBuilder: (context, index) {
        final coin = coins[index];
        final isLast = index == coins.length - 1;
        return Padding(
          padding: EdgeInsets.only(
            bottom: isLast ? Constraints.getBottomWidgetInsetForList(
              value: 16,
            ) : 16.h,
          ),
          child: CoinItemWidget(
            coin: coin,
          ),
        );
      },
    ),
  );
}
