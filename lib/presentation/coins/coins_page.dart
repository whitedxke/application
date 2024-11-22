import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'coins_view_model.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  @override
  void initState() {
    // context.read<CoinsViewModel>().fetchCoinsList();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CoinsViewModel>().fetchCoinsList();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CoinsViewModel>();

    return Scaffold(
      body: viewModel.isLoading ? const Center(
        child: CircularProgressIndicator(),
      )
      : ListView.builder(
          itemCount: viewModel.coins.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                viewModel.coins[index].name,
              ),
            );
          },
      ),
    );
  }
}
