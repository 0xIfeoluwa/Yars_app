import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key,
    required this.icon,
    required this.labelText,
    required this.text,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
  });
  final String text;
  final String labelText;
  final IconData icon;
  final TextInputType? keyboardType;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              suffix: Icon(suffixIcon),
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
