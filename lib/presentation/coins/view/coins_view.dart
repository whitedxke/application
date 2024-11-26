import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/coins_bloc.dart';

class CoinsView extends StatelessWidget {
  const CoinsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinsBloc, CoinsState>(
      builder: (context, state) {
        if (state is CoinsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CoinsLoadedState) {
          return ListView.builder(
            itemCount: state.coins.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.coins[index].name),
              );
            },
          );
        } else if (state is CoinsErrorState) {
          return Center(
            child: Text('Error: ${state.message}.'),
          );
        }
        return const Center(
          child: Text('No coins available.'),
        );
      },
    );
  }
}
