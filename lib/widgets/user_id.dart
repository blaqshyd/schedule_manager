// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class userId extends StatelessWidget {
  const userId({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          color: const Color.fromARGB(70, 134, 21, 154),
          borderRadius: BorderRadius.circular(10.0)),
      child: Image.asset(
        'assets/users/3.png',
        width: 35,
        height: 35,
        scale: 10,
        fit: BoxFit.cover,
      ),
    );
  }
}