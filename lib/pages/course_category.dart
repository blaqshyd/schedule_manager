// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:schedule_manager/model/data.dart';
import 'package:schedule_manager/widgets/heading.dart';
import 'package:sizer/sizer.dart';

import '../widgets/user_id.dart';
import '../widgets/search_courses.dart';

class CourseCategory extends StatefulWidget {
  const CourseCategory({Key? key}) : super(key: key);

  @override
  State<CourseCategory> createState() => _CoursePageState();
}

class _CoursePageState extends State<CourseCategory> {
  final controller = TextEditingController();
  List courses = [allCourseImage, allCourseTitle];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userId(),
            SizedBox(height: 4.h),
            Container(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(FeatherIcons.search),
                  hintText: 'Search Courses',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Headers(
              text: 'Recent Searches',
            ),
            SizedBox(height: 4.h),
            // Courses(
            //   courseImage: allCourseImage,
            //   courseTitle: allCourseTitle,
            // )
          ],
        ),
      ),
    );
  }
}
