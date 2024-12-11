import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/app_color.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.KongPink3,
                AppColor.KongPink2,
                AppColor.KongPink1,
              ],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Gap(6.h),
        Container(
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.KongBlue3,
                AppColor.KongBlue2,
                AppColor.KongBlue1,
              ],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
