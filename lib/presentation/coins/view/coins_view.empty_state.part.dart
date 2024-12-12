part of 'coins_view.dart';

Widget _buildCoinsEmptyStateWidget() {
  return const BaseStateWidget(
    message: "Sorry, the request is not available. Try again later.",
    color: Colors.yellowAccent,
    icon: Icons.warning_outlined,
  );
}
