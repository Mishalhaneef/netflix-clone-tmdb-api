import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          color: kButtonColorBlue,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.5),
            child: Text(
              "Setup",
              style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MaterialButton(
          minWidth: 250,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          onPressed: () {},
          child: const Text(
            "See What you can download",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          color: kButtonColorWhite,
        )
      ],
    );
  }
}
