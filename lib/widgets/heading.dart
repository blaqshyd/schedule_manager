import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/constants.dart';
import '../pages/course_page.dart';
class Headers extends StatelessWidget {
  final String text;
  final IconData? icon;

  const Headers({
    Key? key,
    this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kHeading,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoursePage(),
              )),
          child: Icon(
            icon,
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
