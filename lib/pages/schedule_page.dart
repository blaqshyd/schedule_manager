// ignore_for_file: prefer_const_constructors

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:schedule_manager/components/colors.dart';
import 'package:schedule_manager/widgets/heading.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';
import '../widgets/search_courses.dart';
import '../widgets/user_id.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userId(),
            SizedBox(height: 4.h),
            Headers(
              text: 'Schedule',
            ),
            SizedBox(height: 4.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: kSubHeading,
                ),
                Icon(FeatherIcons.calendar),
              ],
            ),
            SizedBox(height: 2.h),
            SizedBox(
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: kBgImageColor,
                
              ),
            )
          ],
        ),
    );
  }
}
