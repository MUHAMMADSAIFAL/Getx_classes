import 'package:flutter/material.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const AppTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text, // Default is text
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType, // Added keyboardType here
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        filled: true,
        fillColor: AppColors.white,
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
