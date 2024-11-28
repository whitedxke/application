part of 'coins_view.dart';

Widget _buildCoinsHeaderWidget() {
  return Padding(
    padding: EdgeInsets.only(top: 10.h),
    child: Text(
      "COINGECKO: COINS LIST",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.h,
        color: Colors.white,
      ),
    ),
  );
}
