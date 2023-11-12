import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:palet/utils/constants/text_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.end,
      columnMainAxisAlignment: MainAxisAlignment.start,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnPadding: const EdgeInsets.only(top: 20, left: 20),
      columnSpacing: 20,
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
            rowFlex: 3, rowFit: FlexFit.tight, child: Container()),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: TextButton(
               child: Text('Tüm İlanlar',
              style: mBodyText1,),
              onPressed: () {
                context.router.pushNamed('/home/');
              
              },
            ).animate().scaleX().fadeIn()),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: TextButton(
               child: Text('Benim İlanlarım',
              style: mBodyText1,),
              onPressed: () {
                context.router.pushNamed(
                  '/home/my-classifieds',
                  
                );
              },
            ).animate().scaleX().fadeIn()),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: TextButton(
               child: Text('İlan Oluştur',
              style: mBodyText1,),
              onPressed: () {
                context.router.pushNamed(
                  '/home/create-advert',
                );
              },
            ).animate().scaleX().fadeIn()),
      ],
    );
  }
}
