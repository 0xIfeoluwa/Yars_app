import 'package:flutter/material.dart';

class CustomButtonIconWidget extends StatelessWidget {
  const CustomButtonIconWidget({
    super.key,
    this.bColor = Colors.white,
    required this.icon,
    required this.text,
  });
  final Color? bColor;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: OutlinedButton.icon(
          onPressed: () {},
          label: Text(text),
          icon: Icon(icon),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(bColor),
          ),
        ),
      ),
    );
  }
}
