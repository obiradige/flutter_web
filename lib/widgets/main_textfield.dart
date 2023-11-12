import 'package:flutter/material.dart';
import 'package:palet/utils/constants/colors.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    this.hintText,
    this.autoFill,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.isRead,
    this.keyboardType,
    this.onChanged,
    this.maxLines,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<String>? autoFill;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isRead;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final int? maxLines;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller?.selection =
        TextSelection.collapsed(offset: widget.controller!.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: mActiveGreen,
      readOnly: widget.isRead ?? false,
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines ?? 1,
      autocorrect: false,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: mActiveGreen),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: mActiveGreen),
        ),
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: widget.hintText,
      ),
    );
  }
}
