import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: const Alignment(0, 0.1),
          child: Text(
            text,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: const Alignment(0, 0.25),
          child: const Text(
            'Manage and have access to all event\n service conviently',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 114, 112, 112),
            ),
          ),
        ),
      ],
    );
  }
}
