part of 'coins_view.dart';

Widget _buildCoinsLoadingStateWidget() {
  return Center(
    child: CircularProgressIndicator(
      strokeWidth: 6.r,
      color: Colors.yellowAccent,
    ),
  );
}
