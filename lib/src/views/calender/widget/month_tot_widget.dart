import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_color.dart';

class MonthTotWidget extends StatefulWidget {
  const MonthTotWidget({super.key});

  @override
  State<MonthTotWidget> createState() => _MonthTotWidgetState();
}

class _MonthTotWidgetState extends State<MonthTotWidget> {
  bool _visibilityMoney = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        SizedBox(
          height: 60.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        child: Text(
                          "이달 총합",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _visibilityMoney = !_visibilityMoney;
                          });
                        },
                        child: Icon(
                          _visibilityMoney
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      _visibilityMoney ? '123,123,123,12' : "",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                TextSpan(text: _visibilityMoney ? ' 원' : ""),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            "월급날까지 앞으로 N일",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
