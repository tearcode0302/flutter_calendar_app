import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/const/colors.dart';

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;

  const _Time({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontWeight: FontWeight.w600, color: PRIMARY_COLOR, fontSize: 16.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${startTime.toString().padLeft(2, '0')}:00',
          style: textStyle,
        ),
        Text(
          '${endTime.toString().padLeft(2, '0')}:00',
          style: textStyle.copyWith(fontSize: 10.0),
        )
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final String content;

  const _Content({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        content,
      ),
    );
  }
}
