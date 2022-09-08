// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';

class recommededCourses extends StatelessWidget {
  const recommededCourses({
    Key? key,
    required List title,
    required List author,
    required List time,
    required List weekDay,
    required List topicImage,
  })  : _title = title,
        _author = author,
        _time = time,
        _weekDay = weekDay,
        _topicImage = topicImage,
        super(key: key);

  final List _title;
  final List _author;
  final List _time;
  final List _weekDay;
  final List _topicImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _title.length,
        itemBuilder: (context, index) => recommendedDetails(
          title: _title[index],
          author: _author[index],
          time: _time[index],
          weekDay: _weekDay[index],
          topicImage: _topicImage[index],
        ),
      ),
    );
  }
}

class recommendedDetails extends StatelessWidget {
  final String title, author, time, weekDay, topicImage;
  
  const recommendedDetails({
    Key? key,
    required this.title,
    required this.author,
    required this.time,
    required this.weekDay,
    required this.topicImage,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      // The padding is for the space inbetwenn the Recommended courses
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 260,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[500]!.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // This Row is for the course Image and time, weekday
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(topicImage),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        time,
                        style: kDuration,
                      ),
                      Text(
                        weekDay,
                        style: kDuration,
                      ),
                    ],
                  )
                ],
              ),
              Text(title, style: kTitle),
              SizedBox(height: 0.2.h),
              Text("with $author", style: kAuthor),
            ],
          ),
        ),
      ),
    );
  }
}
