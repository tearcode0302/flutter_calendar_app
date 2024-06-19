import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/component/main_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainCalendar(),
        ],
      )
    );
  }
}
