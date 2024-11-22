import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dependencies/dependencies.dart';
import 'presentation/coins/coins_page.dart';
import 'presentation/coins/coins_view_model.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CoinsViewModel>(
      create: (context) => getIt<CoinsViewModel>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CoinsPage(),
      ),
    );
  }
}
