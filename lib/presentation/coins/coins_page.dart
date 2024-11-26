import 'package:flutter/material.dart';

import 'view/coins_view.dart';

// Отдельная задача на то, чтобы реализовать дизайн экрана.
// Так же, в рамках задачи:
// 1. Навигация.
// 2. Адаптация.


class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CoinsView(),
    );
  }
}
