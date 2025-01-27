import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        alignment: const Alignment(0, 0.7),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
            onPressed: onPressed,
            style: const ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Color.fromARGB(255, 39, 34, 34)),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
