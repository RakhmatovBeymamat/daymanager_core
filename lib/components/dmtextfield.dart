import 'package:flutter/material.dart';

class DMTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;

  const DMTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hintText,
      ),
    );
  }
}
