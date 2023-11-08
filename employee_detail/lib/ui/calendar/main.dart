import 'package:employee_detail/ui/calendar/calendarwidget.dart';
import 'package:flutter/material.dart';

class MyTableCalendar extends StatefulWidget {
  const MyTableCalendar({Key? key}) : super(key: key);

  @override
  State<MyTableCalendar> createState() => _MyTableCalendarState();
}

class _MyTableCalendarState extends State<MyTableCalendar> {
  TextEditingController textCon = TextEditingController();
  TextEditingController textCon2 = TextEditingController();

  String text1 = "No Value Entered";
  String text2 = "No Value Entered";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: textCon,
              decoration: InputDecoration(
                hintText: "From Date",
                prefixIcon: IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => CalendarWidget(
                      callbackfunc: (String calldate) {
                        setState(() {
                          text1 = calldate;

                          if (text1.contains("January")) {
                            String result = text1
                                .replaceAll("January", "01")
                                .replaceAll(" ", "-");
                            print(result);

                            //   else hashCode;

                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;

                            textCon.text = result;

                            print(result.substring(0, 2));
                            print("it has octo");
                          }
                          if (text1.contains("Februrary")) {
                            String result = text1
                                .replaceAll("Februrary", "02")
                                .replaceAll(" ", "-");
                            print(result);

                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("March")) {
                            String result = text1
                                .replaceAll("March", "03")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("April")) {
                            String result = text1
                                .replaceAll("April", "04")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("May")) {
                            String result = text1
                                .replaceAll("May", "05")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("June")) {
                            String result = text1
                                .replaceAll("June", "06")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("July")) {
                            String result = text1
                                .replaceAll("July", "07")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("August")) {
                            String result = text1
                                .replaceAll("August", "08")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("September")) {
                            String result = text1
                                .replaceAll("September", "09")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("October")) {
                            String result = text1
                                .replaceAll("October", "10")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              ///1-01-2000   ///01-01-2000
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("November")) {
                            String result = text1
                                .replaceAll("November", "11")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                          if (text1.contains("December")) {
                            String result = text1
                                .replaceAll("December", "12")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon.text = result;
                            print("it has octo");
                          }
                        });
                      },
                    ),
                  ),
                  icon: Icon(Icons.calendar_month),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: textCon2,
              decoration: InputDecoration(
                hintText: "To Date",
                prefixIcon: IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => CalendarWidget(
                      callbackfunc: (String calldate) {
                        setState(() {
                          text2 = calldate;

                          if (text2.contains("January")) {
                            String result = text2
                                .replaceAll("January", "01")
                                .replaceAll(" ", "-");
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            print(result);
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("Februrary")) {
                            String result = text2
                                .replaceAll("Februrary", "02")
                                .replaceAll(" ", "-");
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            print(result);
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("March")) {
                            String result = text2
                                .replaceAll("March", "03")
                                .replaceAll(" ", "-");
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            print(result);
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("April")) {
                            String result = text2
                                .replaceAll("April", "04")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("May")) {
                            String result = text2
                                .replaceAll("May", "05")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("June")) {
                            String result = text2
                                .replaceAll("June", "06")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("July")) {
                            String result = text2
                                .replaceAll("July", "07")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("August")) {
                            String result = text2
                                .replaceAll("August", "08")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("September")) {
                            String result = text2
                                .replaceAll("September", "09")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("October")) {
                            String result = text2
                                .replaceAll("October", "10")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("November")) {
                            String result = text2
                                .replaceAll("November", "11")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                          if (text2.contains("December")) {
                            String result = text2
                                .replaceAll("December", "12")
                                .replaceAll(" ", "-");
                            print(result);
                            if (result.substring(0, 2).contains("1-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("1", "0")
                                  .replaceAll("-", "1-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("2-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("2", "0")
                                  .replaceAll("-", "2-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("3-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("3", "0")
                                  .replaceAll("-", "3-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("4-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("4", "0")
                                  .replaceAll("-", "4-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("5-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("5", "0")
                                  .replaceAll("-", "5-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("6-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("6", "0")
                                  .replaceAll("-", "6-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("7-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("7", "0")
                                  .replaceAll("-", "7-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("8-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("8", "0")
                                  .replaceAll("-", "8-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else if (result.substring(0, 2).contains("9-")) {
                              String half = result
                                  .substring(0, 2)
                                  .replaceAll("9", "0")
                                  .replaceAll("-", "9-");
                              String shalf = result.substring(2, 9);

                              result = half + shalf;
                            } else
                              result;
                            textCon2.text = result;
                            print("it has octo");
                          }
                        });
                      },
                    ),
                  ),
                  icon: Icon(Icons.calendar_month),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
