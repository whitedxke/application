import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/domain/entities/coin/coin.dart';
import '../../widgets/base_state_widget.dart';
import '../bloc/coins_bloc.dart';
import 'widgets/coin_item_widget.dart';

part 'coins_view.coin_list.part.dart';
part 'coins_view.empty_state.part.dart';
part 'coins_view.error_state.part.dart';
part 'coins_view.header.part.dart';
part 'coins_view.loading_state.part.dart';

class CoinsView extends StatefulWidget {
  const CoinsView({super.key});

  @override
  State<CoinsView> createState() => _CoinsViewState();
}

class _CoinsViewState extends State<CoinsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinsBloc, CoinsState>(
      builder: (context, state) {
        if (state is CoinsLoadingState) {
          return _buildCoinsLoadingStateWidget();
        } else if (state is CoinsLoadedState) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _buildCoinsHeaderWidget(),
                ),
                SliverList(
                  delegate: _buildCoinsListWidget(
                    coins: state.coins,
                  ),
                )
              ],
            ),
          );
        } else if (state is CoinsErrorState) {
          return _buildCoinsErrorStateWidget();
        }
        return _buildCoinsEmptyStateWidget();
      },
    );
  }
}
