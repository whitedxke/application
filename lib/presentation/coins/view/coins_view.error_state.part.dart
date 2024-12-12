part of 'coins_view.dart';

Widget _buildCoinsErrorStateWidget() {
  return const BaseStateWidget(
    message: "Sorry, there\'s been a mistake. Try again later.",
    color: Colors.redAccent,
    icon: Icons.error_outline,
  );
}
