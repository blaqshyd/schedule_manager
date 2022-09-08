// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(40)),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 32, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: -45,
            child: Container(
              height: 100,
              width: 100,
              // padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.red.shade50, width: 7),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/users/3.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
