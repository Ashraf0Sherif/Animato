import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String)? onChanged;
  final String hintText;
  final bool? obScureText;
  final TextInputType? textInputType;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String? initialValue;

  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.onChanged,
      this.textInputType,
      this.obScureText = false,
      this.minLines = 1,
      this.maxLines = 1,
      this.validator,
      this.onSaved,
      this.initialValue = ""});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        }
        return null;
      },
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: textInputType,
      obscureText: obScureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: Colors.white),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(27),
      borderSide: BorderSide(color: color, width: 1.2),
    );
  }
}