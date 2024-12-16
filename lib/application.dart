import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dependencies/dependencies.dart';
import 'presentation/coin_details/bloc/coin_details_bloc.dart';
import 'presentation/coins/bloc/coins_bloc.dart';
import 'presentation/coins/coins_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      designSize: const Size(
        375,
        812,
      ),
      fontSizeResolver: FontSizeResolvers.height,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CoinsBloc>(
            create: (context) => getIt<CoinsBloc>()..add(FetchCoinsEvent()),
          ),
          BlocProvider<CoinDetailsBloc>(
            create: (context) => getIt<CoinDetailsBloc>(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CoinsPage(),
        ),
      ),
    );
  }
}
