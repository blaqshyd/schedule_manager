// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:schedule_manager/components/colors.dart';
import 'package:schedule_manager/pages/course_category.dart';
import 'package:schedule_manager/widgets/heading.dart';
import '../components/constants.dart';
import 'package:sizer/sizer.dart';
import '../widgets/course_list.dart';
import '../widgets/rec_courses.dart';
import '../widgets/user_id.dart';
import '../widgets/search_courses.dart';
import 'package:schedule_manager/model/data.dart';

class CoursePage extends StatefulWidget {
  CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userId(),
              SizedBox(height: 18),
              Headers(
                text: 'Courses',
                icon: FeatherIcons.search,
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: kSubHeading,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CoursePage()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: kSecondaryColor,
                        ),
                      )),
                ],
              ),
              SizedBox(height: 2.h),
              recommededCourses(
                title: recCourseTitle,
                author: recCourseAuthor,
                time: recCourseTime,
                weekDay: recCourseWeekDay,
                topicImage: courseTopicImage,
              ),
              SizedBox(height: 4.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headers(
                    text: 'Your Courses',
                    icon: Iconsax.filter_edit2,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CoursesList(),
                ],
              ),
            ],
          ),

      ),
    );
  }
}
