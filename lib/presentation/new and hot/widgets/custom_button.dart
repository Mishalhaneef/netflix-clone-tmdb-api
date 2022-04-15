import 'package:flutter/material.dart';

class CustomButtonWidget2 extends StatelessWidget {
  const CustomButtonWidget2({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          text,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
