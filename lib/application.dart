import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dependencies/dependencies.dart';
import 'presentation/coins/bloc/coins_bloc.dart';
import 'presentation/coins/coins_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CoinsBloc>(
          create: (context) => getIt<CoinsBloc>()..add(FetchCoinsEvent()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CoinsPage(),
      ),
    );
  }
}
