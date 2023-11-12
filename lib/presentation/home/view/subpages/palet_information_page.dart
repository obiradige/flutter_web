import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:palet/domain/model/classified_response_model.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/presentation/home/widget/bubbless.dart';
import 'package:palet/utils/adaptive/all_adaptive.dart';
import 'package:palet/widgets/form_builder_dropdown_field.dart';
import 'package:palet/widgets/main_button.dart';

@RoutePage()
class PaletInformationPage extends StatelessWidget {
  const PaletInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context)..getClassifiedCategories(),
      builder: (context, state) {
        return AdaptAllView(
            phone: FormPaletInfo(
              state: state,
            ),
            tablet: FormPaletInfo(
              state: state,
            ),
            desktop: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(flex: 1, child: BubblesContainer()),
                Flexible(
                    flex: 2,
                    child: FormPaletInfo(
                      state: state,
                    )),
                const Flexible(flex: 1, child: BubblesContainer()),
              ],
            ));
      },
    ));
  }
}

class FormPaletInfo extends StatelessWidget {
  const FormPaletInfo({
    super.key,
    required this.state,
  });
  final HomeState? state;
  @override
  Widget build(BuildContext context) {
    final createAdvertCubit = context.read<HomeCubit>();
    return FormBuilder(
      key: context.read<HomeCubit>().paletInfoformKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: state?.classifieds?.length ?? 0,
                itemBuilder: (context, index) {
                  final (a, b) = newMethod(index, state?.classifieds, context,
                      state!, createAdvertCubit);
                  final c = a ?? b;
                  return c;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MainButton(
                  label: 'İleri',
                  onPressed: () {
                    context.router.pushNamed('/home/create-advert/advert-info');
                  }),
            ],
          ),
        ),
      ),
    );
  }

  (Column?, Widget?) newMethod(
    int index,
    List<BaseClassifiedsResponse>? children,
    BuildContext context,
    HomeState state,
    HomeCubit createAdvertCubit,
  ) {
    if (children![index].isTitleMI) {
      final subChildren = children[index].children;
      return (
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(children[index].content ?? ''),
            const SizedBox(
              height: 10,
            ),
            FormBuilderDropdownContainer<BaseClassifiedsResponse>(
              name: 'categories',
              items: subChildren
                  ?.map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.content ?? ''),
                      ))
                  .toList(),
              onChanged: (p0) {
                final dummyList = state.classifieds;
                dummyList?.removeRange(index + 1, dummyList.length);

                final updatedState =
                    (classifieds: [...?dummyList, ...?p0?.children]);

                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                createAdvertCubit.emit(
                    HomeSuccess(const [], const [], updatedState.classifieds));
              },
            )
          ],
        ),
        null
      );
    }

    return (null, Text(children[index].content ?? ''));
  }
}
