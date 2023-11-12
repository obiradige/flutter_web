import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// ignore: must_be_immutable
class FormBuilderDropdownContainer<T> extends StatelessWidget {
  FormBuilderDropdownContainer({
    super.key,
    this.initialValue,
    this.items,
    this.valueTransformer,
    this.onChanged,
    required this.name,
    this.label,
    this.readOnly = false,
  });

  final void Function(T?)? onChanged;
  final T? initialValue;
  final List<DropdownMenuItem<T>>? items;
  dynamic Function(T?)? valueTransformer;
  final String name;
  final String? label;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    if (items == null || items!.isEmpty) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label ?? ''),
          const SizedBox(height: 4),
          FormBuilderDropdown<T>(
            name: name,
            onChanged: onChanged,
            initialValue: initialValue,
            items: items!,
            enabled: !readOnly!,
            valueTransformer: valueTransformer,
            style: const TextStyle(fontSize: 14),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.notEqual(items!.first)
            ]),
            decoration: InputDecoration(
              labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
