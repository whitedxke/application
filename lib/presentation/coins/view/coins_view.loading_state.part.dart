part of 'coins_view.dart';

Widget _buildCoinsLoadingStateWidget() {
  return Center(
    child: CircularProgressIndicator(
      backgroundColor: Colors.white,
      strokeWidth: 6.r,
      valueColor: const AlwaysStoppedAnimation<Color>(
        Colors.yellowAccent,
      ),
    ),
  );
}
