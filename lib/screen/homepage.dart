import 'package:age_calculator/age_calculator.dart';
import 'package:agecalculator/screen/result_screen.dart';
import 'package:agecalculator/utils/utils.dart';
import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 30, right: 30, top: 50),
                  decoration: const BoxDecoration(color: Color(0xff2b248d)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Calculate Age",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "To get your age, just enter your date of birth and click on calculate button",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  decoration: const BoxDecoration(color: Color(0xffffffff)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "What is your date of birth?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CupertinoDateTextBox(
                          initialValue: _selectedDateTime,
                          onDateChange: onBirthdayChange,
                          hintText: Utils.formatDate(_selectedDateTime),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(onPressed: () {
                        // userAge(DateTime.now(), _selectedDateTime);
                        // calculateAge(_selectedDateTime);
                        // age(DateTime.now(),_selectedDateTime);
                        duration = AgeCalculator.age(_selectedDateTime);
                        duration1 = AgeCalculator.timeToNextBirthday(_selectedDateTime);
                        var month = (duration!.years*12)+int.parse("${duration?.months}");
                        var week = double.parse("${(duration!.years*52.15)+((int.parse("${duration?.months}")*30)/7)+((int.parse("${duration?.days}"))/7)}").toStringAsFixed(0);
                        var days = double.parse("${month*30.5}").toStringAsFixed(0);
                        var hours = (double.parse(days) * 24).toStringAsFixed(0);
                        var minutes = (double.parse(hours) * 60).toStringAsFixed(0);
                        var secound = (double.parse(hours) * 60*60).toStringAsFixed(0);
                        print('asfhasd ${duration?.days}\n $duration1 \n$month '
                            '\n$week \n$days \n$hours \n$minutes \n$secound');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
                          dateOfBirth: "$duration",
                          nextBirthDay: "$duration1",
                          years: "${duration?.years}",
                          month: "$month",
                          week: week,
                          days: days,
                          hours: hours,
                          minutes: minutes,
                          second: secound,
                        ),));
                      },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: const Color(0xff2b248d),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Calculate"),
                      )
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

  DateTime _selectedDateTime = DateTime.now();
  DateDuration? duration;
  DateDuration? duration1;

  void onBirthdayChange(DateTime birthday) {
    setState(() {
      _selectedDateTime = birthday;
    });
  }

  userAge(DateTime currentDate, DateTime userBirthDay) {
    Duration parse = currentDate.difference(userBirthDay).abs();
    print("ergtertwe ${parse.inDays~/360} Years ${((parse.inDays%360)~/30)} Month ${(parse.inDays%360)%30} Days");
    return "${parse.inDays~/360} Years ${((parse.inDays%360)~/30)} Month ${(parse.inDays%360)%30} Days";
  }

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    print('age $age');
    return age;
  }

  void age(DateTime today, DateTime dob) {
    final year = today.year - dob.year;
    final mth = today.month - dob.month;
    final days = today.day - dob.day;
    if(mth < 0){
      /// negative month means it's still upcoming
      print('you buns is ${year-1}');
      print('turning $year in ${mth.abs()} months and $days days');
    }
    else {
      print('your next bday is ${12-mth}months and ${28 -days} days away');
    }
  }

  // age(DateTime(2023, 06, 12), DateTime([year], [months], [days]));
  // age(DateTime.now(), DateTime([year], [months], [days]));

}
