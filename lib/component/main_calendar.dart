import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/const/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  const MainCalendar({
    super.key,
    required this.onDaySelected,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
        date.year == selectedDate.year &&
        date.month == selectedDate.month &&
        date.day == selectedDate.day,
      focusedDay: DateTime.now(),
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(3000, 1, 1),
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      calendarStyle: CalendarStyle(
          isTodayHighlighted: false,
          defaultDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: Color(0xFFEDE7F6),
          ),
          weekendDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.0),
              color: Color(0xFF90CAF9)),
          selectedDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: Colors.red,
            border: Border.all(
              color: Color(0xFFF37021),
              width: 1.0,
            ),
          ),
          defaultTextStyle:
              TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
          weekendTextStyle:
              TextStyle(fontWeight: FontWeight.w900, color: DARK_GREY_COLOR),
          selectedTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: PRIMARY_COLOR,
          )),
    );
  }
}
