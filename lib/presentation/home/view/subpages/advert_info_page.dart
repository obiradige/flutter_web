import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/presentation/home/widget/bubbless.dart';
import 'package:palet/utils/adaptive/all_adaptive.dart';
import 'package:palet/widgets/form_builder_textfield.dart';
import 'package:palet/widgets/main_button.dart';

@RoutePage()
class AdvertInfoPage extends StatelessWidget {
  const AdvertInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdaptAllView(
            phone: FormAdvertInfo(),
            tablet: FormAdvertInfo(),
            desktop: SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(flex: 1, child: BubblesContainer()),
                  Flexible(flex: 2, child: FormAdvertInfo()),
                  Flexible(flex: 1, child: BubblesContainer()),
                ],
              ),
            )));
  }
}

class FormAdvertInfo extends StatelessWidget {
  const FormAdvertInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: context.read<HomeCubit>().advertInfoformKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FormBuilderTextContainer(
                  label: 'İlan Başlığı', name: 'title'),
              const FormBuilderTextContainer(
                  label: 'İlan Açıklaması', name: 'description'),
              const FormBuilderTextContainer(
                  label: 'Sipariş Adedi', name: 'price'),
              Row(
                children: [
                  Expanded(
                      child: MainButton(
                          label: 'Geri',
                          onPressed: () {
                            context.router.pop();
                          })),
                  const SizedBox(width: 10),
                  Expanded(
                      child: MainButton(
                          label: 'İleri',
                          onPressed: () {
                            context.router
                                .pushNamed('/home/create-advert/delivery-info');
                          })),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
