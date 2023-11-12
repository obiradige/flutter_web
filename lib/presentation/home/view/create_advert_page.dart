import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palet/config/router/app_router.gr.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/presentation/home/widget/menu.dart';
import 'package:palet/utils/adaptive/all_adaptive.dart';
import 'package:palet/utils/constants/colors.dart';

@RoutePage()
class CreateAdvertPage extends StatelessWidget {
 const  CreateAdvertPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
          PaletInformationRoute(),
          AdvertInfoRoute(),
          DeliveryInfoRoute(),
        ],
        builder: (context, child, tabController) {
          return Scaffold(
            key: context.read<HomeCubit>().scaffoldKey,
            drawer: const Drawer(
              child: Menu(),
            ),
            body: Column(
              children: [
                AdaptAllView(
                    phone: drawerButton(context),
                    tablet: drawerButton(context),
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
                TabBar(
                  labelColor: Colors.black,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: 'Palet Bilgileri',
                    ),
                    Tab(
                      text: 'İlan Bilgileri',
                    ),
                    Tab(
                      text: 'Teslimat Bilgileri',
                    ),
                  ],
                ),
                Expanded(child: child)
              ],
            ),
          );
        });
  }

  Widget drawerButton(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          context.read<HomeCubit>().scaffoldKey.currentState?.openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
