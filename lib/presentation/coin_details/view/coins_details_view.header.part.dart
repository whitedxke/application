part of 'coin_details_view.dart';

Widget _buildCoinDetailsHeader({
  required String title,
  required void Function() onBackTap,
}) {
  final name = "COINGECKO: ${title.toUpperCase()}";

  return Padding(
    padding: EdgeInsets.only(
      top: 10.h,
      right: 16.w,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            onBackTap();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.h,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.h,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
