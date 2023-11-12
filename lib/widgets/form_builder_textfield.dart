import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderTextContainer extends StatelessWidget {
  const FormBuilderTextContainer({
    super.key,
    required this.label,
    required this.name,
    this.initialValue,
    this.readOnly = false,
    this.showSuffixIcon = false,
    this.onPressed,
    this.maxLength,
    this.validator,
    this.keyboardType,
  });

  final String name;
  final String label;
  final String? initialValue;
  final bool? readOnly;
  final bool? showSuffixIcon;
  final void Function()? onPressed;
  final int? maxLength;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(label),
          const SizedBox(height: 4),
          IntrinsicHeight(
            child: Stack(
              fit: StackFit.expand,
              children: [
                FormBuilderTextField(
                  textAlignVertical: TextAlignVertical.top,
                  name: name,
                  readOnly: readOnly!,
                  validator: validator,
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  decoration: const InputDecoration(
                    counterText: '',
                    errorStyle: TextStyle(height: 0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  initialValue: initialValue ?? '',
                  style: const TextStyle(fontSize: 14),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
