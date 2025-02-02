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
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: OutlinedButton.icon(
          onPressed: () {},
          label: Text(text),
          icon: Icon(icon),
          style: OutlinedButton.styleFrom(
            backgroundColor: bColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
