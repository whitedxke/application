part of 'coins_view.dart';

Widget _buildCoinsErrorStateWidget() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 24.w,
    ),
    child: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 16.h,
            ),
            child: Icon(
              Icons.error_outline,
              size: 48.h,
              color: Colors.redAccent,
            ),
          ),
          Text(
            'Sorry, there\'s been a mistake. Try again later.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.h,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
