import 'package:flutter/material.dart';

class CoinDetailsPage extends StatefulWidget {
  const CoinDetailsPage({super.key});

  @override
  State<CoinDetailsPage> createState() => _CoinDetailsPageState();
}

class _CoinDetailsPageState extends State<CoinDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Container(),
      ),
    );
  }
}
