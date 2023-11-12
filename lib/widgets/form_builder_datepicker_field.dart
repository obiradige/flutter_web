import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class FormBuilderDatePickerContainer extends StatelessWidget {
  const FormBuilderDatePickerContainer({
    super.key,
    required this.label,
    required this.name,
    this.readOnly = false,
    this.initialValue,
  });


  final String label;
  final String name;
  final bool? readOnly;
  final DateTime? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          const SizedBox(height: 4),
          FormBuilderDateTimePicker(
            name: name,
            format: DateFormat('dd/MM/yyyy'),
            inputType: InputType.date,
            enabled: !readOnly!,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            style: const TextStyle(fontSize: 14),
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.calendar_month),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            initialValue: initialValue
          )
        ],
      ),
    );
  }
}
