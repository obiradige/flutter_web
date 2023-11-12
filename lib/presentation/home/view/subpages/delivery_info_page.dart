import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/presentation/home/widget/bubbless.dart';
import 'package:palet/utils/adaptive/all_adaptive.dart';
import 'package:palet/widgets/form_builder_datepicker_field.dart';
import 'package:palet/widgets/form_builder_textfield.dart';
import 'package:palet/widgets/main_button.dart';

@RoutePage()
class DeliveryInfoPage extends StatelessWidget {
  const DeliveryInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdaptAllView(
          phone: FormDeliveryInfo(),
          tablet: FormDeliveryInfo(),
          desktop: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 1, child: BubblesContainer()),
              Flexible(flex: 2, child: FormDeliveryInfo()),
              Flexible(flex: 1, child: BubblesContainer()),
            ],
          )),
    );
  }
}

class FormDeliveryInfo extends StatelessWidget {
  const FormDeliveryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: context.read<HomeCubit>().deliveryInfoformKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FormBuilderDatePickerContainer(
                  label: 'Teslim Tarihi', name: 'deadline'),
              const FormBuilderDatePickerContainer(
                  label: 'İlanın Yayın Süresi',
                  name: 'classifiedsRemainingTime'),
              const FormBuilderTextContainer(label: 'Adres', name: 'address'),
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
                      child:
                          MainButton(label: 'İlan Oluştur', onPressed: () {})),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
