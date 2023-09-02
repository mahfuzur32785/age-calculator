import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key,
      required this.dateOfBirth,
      required this.nextBirthDay,
      required this.month,
      required this.week,
      required this.days,
      required this.hours,
      required this.minutes,
      required this.second,
      });
  final String dateOfBirth;
  final String nextBirthDay;
  final String month;
  final String week;
  final String days;
  final String hours;
  final String minutes;
  final String second;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b248d),
    );
  }
}
