part of 'coin_details_view.dart';

Widget _buildCoinDetailsDescriptionWidget({
  required String symbol,
  required String name,
  required double price,
}) {
  final tag = 'SYMBOL: ${symbol.toUpperCase()}';
  final title = 'NAME: $name';
  final amount = 'PRICE: ${price.toString()}';
  return Padding(
    padding: EdgeInsets.only(
      left: 10.w,
      top: 24.h,
      right: 10.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDescriptionWidget(
          description: title,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: _buildDescriptionWidget(
            description: tag,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 21.h,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    ),
  );
}

Widget _buildDescriptionWidget({
  required String description,
}) {
  return Text(
    description,
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18.h,
      color: Colors.white,
    ),
    textAlign: TextAlign.start,
  );
}
