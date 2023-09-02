import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key,
      required this.dateOfBirth,
      required this.nextBirthDay,
        required this.years,
      required this.month,
      required this.week,
      required this.days,
      required this.hours,
      required this.minutes,
      required this.second,
      });
  final String dateOfBirth;
  final String nextBirthDay;
  final String years;
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
      body: Container(
        padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        child: Column(children: [
          SizedBox(height: 50.0,),
          Container(
            height: 100.0,
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text("Age Results",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                  Icon(Icons.share_outlined,color: Colors.white,size: 20.0,)
                ]),
                Text("Here is your age simplified and converted to\ndifferent formats!",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 15),),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            flex: 1,
            child: Container(
              height: 100.0,
              width: double.infinity,
              padding: EdgeInsets.only(top: 5.0,left: 15.0),
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                color: Color(0xff20364D),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Your Age",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  SizedBox(height: 5.0,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Text("${widget.dateOfBirth}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),), //
                        ]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 15.0,left: 15.0),
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff20364D),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              height: 100.0,
              width: double.infinity,
              child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Next Birthday",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Text("${widget.nextBirthDay}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  ]),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            flex: 6,
            child: Container(
              height: 100.0,
              width: double.infinity,
              padding: EdgeInsets.only(top: 15.0,left: 15.0),
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff20364D),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0))
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("You Have Lived For",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  SizedBox(height: 40.0,),
                  Row(
                      children: [
                        const Text("Total Years",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        const SizedBox(width: 48.0,),
                        Text("${widget.years}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Months",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 30.0,),
                        Text("${widget.month}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Weeks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 35.0,),
                        Text("${widget.week}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Days",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 50.0,),
                        Text("${widget.days}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Hours",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 40.0,),
                        Text("${widget.hours}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Minutes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 25.0,),
                        Text("${widget.minutes}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                  Row(
                      children: [
                        Text("Total Seconds",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        SizedBox(width: 20.0,),
                        Text("${widget.second}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),

                      ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
