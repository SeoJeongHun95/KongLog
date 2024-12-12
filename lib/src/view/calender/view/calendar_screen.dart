import 'package:flutter/material.dart';

import '../../../../core/router/bottom_nav_bar.dart';
import '../widget/calendar_widget.dart';
import '../widget/month_kong_widget.dart';
import '../widget/month_tot_widget.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("달력"),
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //drag list view 도입하기위해 위젯을 분리 빛 변경
                MonthKongWidget(),
                CalendarWidget(),
                MonthTotWidget(),
                // EventListWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
