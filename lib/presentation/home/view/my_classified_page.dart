import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:palet/domain/model/all_classified_model.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/presentation/home/widget/menu.dart';
import 'package:palet/utils/adaptive/all_adaptive.dart';
import 'package:palet/utils/constants/colors.dart';
import 'package:palet/widgets/pallet_card.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class MyClassifiedPage extends StatelessWidget {
  MyClassifiedPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKeyD = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKeyD,
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: BlocProvider.of<HomeCubit>(context)
          ..getMyClassified(companyId: '2'),
        builder: (context, state) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Lottie.asset(
                    'assets/animation/bubbles.json',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    AdaptAllView(
                        phone: drawerButton(),
                        tablet: drawerButton(),
                        desktop: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: const BoxDecoration(
                                color: mActiveGray,
                                boxShadow: [
                                  BoxShadow(
                                      color: mActiveGray,
                                      offset: Offset(0, 0),
                                      blurRadius: 10)
                                ]),
                            child: const Menu())),
                    AdaptAllView(
                        phone: ListedMyClassified(
                          state: state,
                        ),
                        tablet: ListedMyClassified(
                          state: state,
                        ),
                        desktop: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                                flex: 2,
                                child: ListedMyClassified(
                                  state: state,
                                )),
                            Flexible(flex: 1, child: Container()),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget drawerButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          _scaffoldKeyD.currentState?.openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
    );
  }
}

class ListedMyClassified extends StatelessWidget {
  const ListedMyClassified({super.key, required this.state});

  final HomeState? state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state?.myData?.length ?? 0,
      itemBuilder: (context, index) {
        final BaseAllClassifiedModel data = state!.myData![index];
        return state is HomeLoading
            ? Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                enabled: true,
                child: PalletCard(state: data))
            : PalletCard(state: data);
      },
    );
  }
}
