import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const PrimaryButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
              Theme.of(context).textTheme.headlineLarge!.copyWith(
                  // color: selected ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // height: 0.1,
                  fontSize: 24))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              // color: selected ? Colors.yellow : Colors.white,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              // height: 0.1,
              fontSize: 24),
        ),
      ),
    );
  }
}
