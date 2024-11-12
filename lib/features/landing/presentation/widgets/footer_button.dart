import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool selected;
  final String title;

  const FooterButton(
      {super.key,
      required this.onTap,
      required this.selected,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: onTap,
        style: const ButtonStyle(),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: selected ? Colors.yellow : Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18),
        ),
      ),
    );
  }
}
