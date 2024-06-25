import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/component/main_calendar.dart';
import 'package:flutter_calendar_app/component/schedule_bottom_sheet.dart';
import 'package:flutter_calendar_app/component/schedule_card.dart';
import 'package:flutter_calendar_app/component/today_banner.dart';
import 'package:flutter_calendar_app/const/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: PRIMARY_COLOR,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: true,
              builder: (_) => ScheduleBottomSheet(),
              isScrollControlled: true,
            );
          },
          child: Icon(
            Icons.add,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              MainCalendar(
                selectedDate: selectedDate,
                onDaySelected: onDaySelected,
              ),
              SizedBox(
                height: 8.0,
              ),
              TodayBanner(
                selectedDate: selectedDate,
                count: 0,
              ),
              SizedBox(
                height: 8.0,
              ),
              ScheduleCard(
                startTime: 12,
                endTime: 14,
                content: '플러터 조지기',
              ),
            ],
          ),
        ));
  }

  void onDaySelected(DateTime selectedDate, DateTime focusDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
