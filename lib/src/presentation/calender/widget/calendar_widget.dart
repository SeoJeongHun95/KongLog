import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      locale: "ko_KR",
      firstDay: DateTime.utc(2023, 1, 1),
      lastDay: DateTime.utc(2099, 12, 31),
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      availableGestures: AvailableGestures.horizontalSwipe,
      // 포맷을 하나로 제한
      // availableCalendarFormats: const {
      //   CalendarFormat.month: 'Month',
      //   CalendarFormat.twoWeeks: 'TwoWeeks',
      // },
      calendarBuilders: CalendarBuilders(
        headerTitleBuilder: (context, day) {
          return GestureDetector(
            onTap: () async {
              final DateTime? sDay = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: _focusedDay,
                firstDate: DateTime.utc(2023, 1, 1),
                lastDate: DateTime.utc(2099, 12, 31),
                dateFormat: "yyyy-MMMM-dd",
                locale: DateTimePickerLocale.ko,
                looping: false,
                backgroundColor: Theme.of(context).colorScheme.surface,
                textColor: Theme.of(context).colorScheme.onSurface,
                titleText: "날짜 선택",
                confirmText: "선택",
                cancelText: "취소",
                reverse: true,
              );
              setState(() {
                if (sDay != null) _focusedDay = sDay;
              });
            },
            child: Center(
              child: Text(
                "${day.year}년 ${day.month}월",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
      selectedDayPredicate: (day) {
        // Use `selectedDayPredicate` to determine which day is currently selected.
        // If this returns true, then `day` will be marked as selected.

        // Using `isSameDay` is recommended to disregard
        // the time-part of compared DateTime objects.
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          // Call `setState()` when updating the selected day
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          // Call `setState()` when updating calendar format
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        // No need to call `setState()` here
        _focusedDay = focusedDay;
      },
    );
  }
}
