import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventListWidget extends StatelessWidget {
  const EventListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 120.h,
        ),
        Container(
          color: Colors.orange,
          width: double.infinity,
          height: 120.h,
        ),
        Container(
          color: Colors.yellow,
          width: double.infinity,
          height: 120.h,
        ),
      ],
    );
  }
}
