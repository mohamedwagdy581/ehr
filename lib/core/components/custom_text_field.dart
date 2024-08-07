import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label, hint;
  final IconData? prefix, suffix;
  final double? iconSize, opacity, borderRadius;
  final Color? suffixColor, prefixColor;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final Function(String)? onSubmitted;
  final bool secure;
  final  VoidCallback? suffixPressed;
  final  VoidCallback? prefixPressed;
  final bool? isClickable;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.prefix, this.suffix,
    this.iconSize,
    this.suffixColor,
    this.prefixColor,
    required this.controller,
    required this.keyboardType,
    this.textStyle,
    required this.secure,
    this.onTap,
    this.validator,
    this.onSubmitted,
    this.suffixPressed,
    this.isClickable,
    this.prefixPressed, this.opacity, this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle,
      controller: controller,
      keyboardType: keyboardType,
      onTap: onTap,
      enabled: isClickable,
      validator: validator,
      obscureText: secure,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(
            prefix,
            color: prefixColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(suffix),
            onPressed: suffixPressed,
            color: suffixColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}