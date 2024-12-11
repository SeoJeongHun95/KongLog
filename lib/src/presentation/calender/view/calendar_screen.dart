import 'package:flutter/material.dart';
import 'package:konglog/src/presentation/calender/widget/month_kong_widget.dart';
import 'package:konglog/src/presentation/calender/widget/month_tot_widget.dart';

import '../../../../core/router/bottom_nav_bar.dart';
import '../widget/calendar_widget.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      // appBar: AppBar(
      //   centerTitle: false,
      //   title: const Text("달력"),
      //   scrolledUnderElevation: 0,
      //   backgroundColor: Theme.of(context).colorScheme.surface,
      // ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
