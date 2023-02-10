import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.label,
      this.controller,
      this.padding,
      this.onChanged,
      this.maxWidth,
      this.validator,
      this.inputType,
      this.inputFormatters});

  final String label;
  final TextEditingController? controller;
  final EdgeInsets? padding;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final double? maxWidth;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        keyboardType: inputType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            labelText: label,
            constraints:
                maxWidth != null ? BoxConstraints(maxWidth: maxWidth!) : null,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
      ),
    );
  }
}

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
                '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
