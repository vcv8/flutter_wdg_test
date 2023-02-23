import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: null,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null || value == '') {
          return 'Campo obligatorio';
        } else {
          return value.length < 3 ? 'Mínimo 3 letras' : null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '18 caracteres max',
        //prefixIcon: Icon(Icons.verified_outlined),
        //suffixIcon: Icon(Icons.people_alt_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //icon: Icon(Icons.assignment_ind_outlined),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
