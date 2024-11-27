part of 'coin_item_widget.dart';

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
