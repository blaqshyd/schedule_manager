// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/colors.dart';
import '../components/constants.dart';
import '../model/data.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 1.h),
        itemCount: courseTitle.length,
        itemBuilder: (context, index) => Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: kBgImageColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset(courseTopicImage[index]),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseTitle[index],
                            style: kTitle,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timelapse_rounded,
                                size: 10.sp,
                              ),
                              SizedBox(
                                width: 1.5.w,
                              ),
                              Text(
                                courseTime[index],
                                style: kDuration,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}