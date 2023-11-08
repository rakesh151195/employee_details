import 'package:employee_detail/bloc/employee_cubit.dart';
import 'package:employee_detail/model/usermodel.dart';
import 'package:employee_detail/ui/calendar/calendarwidget.dart';
import 'package:employee_detail/ui/calendar/calendarwidigetnodate.dart';
import 'package:employee_detail/ui/home.dart';
import 'package:employee_detail/utils/imagepath.dart';
import 'package:employee_detail/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AddNewEmployeeDetails extends StatefulWidget {
  const AddNewEmployeeDetails({super.key});

  @override
  State<AddNewEmployeeDetails> createState() => _AddNewEmployeeDetailsState();
}

class _AddNewEmployeeDetailsState extends State<AddNewEmployeeDetails> {
  TextEditingController textCon = TextEditingController();
  TextEditingController textCon2 = TextEditingController();
  TextEditingController textCon3 = TextEditingController();
  TextEditingController jobdesc = TextEditingController();

  String text1 = "No Value Entered";
  String text2 = "No Value Entered";
  String _selected = '';
  final List<String> _items = [
    'Product Designer',
    'Flutter Developer',
    'QA Tester',
    'Product Owner',
    'Product Designer',
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Add Employee Details",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.fontA),
            titleTextStyle: const TextStyle(fontSize: 14),
            // toolbarHeight: 80,
            //backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          body: Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 8.0), // Padding around the container
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff949C9E),
                        width: 0.5), // Border for the container
                    borderRadius: BorderRadius.circular(8.0),
                    // Rounded corners
                  ),
                  child: Row(
                    children: <Widget>[
                      // Image icon on the left
                      SvgPicture.asset(
                        EmployeeImageConstant.profile,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(width: 8.0), // Space between icon and text field
                      // Text field
                      Expanded(
                        child: TextField(
                          controller: textCon3,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            hintText: "Employee name",
                            hintStyle: AppStyle.fontD,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0), // Padding around the container
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xff949C9E),
                        width: 0.5), // Border for the container
                    borderRadius: BorderRadius.circular(8.0),
                    // Rounded corners
                  ),
                  child: Row(
                    children: <Widget>[
                      // Image icon on the left
                      SvgPicture.asset(
                        EmployeeImageConstant.bag,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                          width: 8.0), // Space between icon and text field
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showmodal(context);
                            FocusScope.of(context).unfocus();
                            print("opening bottomsheet");
                          },
                          child: Text(
                            _selected.isNotEmpty ? _selected : 'selected item',
                            style: _selected.isNotEmpty
                                ? AppStyle.fontD8
                                : AppStyle.fontD,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        EmployeeImageConstant.dropdownrrow,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      padding: const EdgeInsets.only(
                          left: 0.0,
                          right: 8.0), // Padding around the container
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff949C9E),
                            width: 0.5), // Border for the container
                        borderRadius: BorderRadius.circular(8.0),
                        // Rounded corners
                      ),
                      child: Row(
                        children: <Widget>[
                          // Image icon on the left
                          SizedBox(
                            width: 130,
                            height: 40,
                            child: TextField(
                              controller: textCon,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                hintText: "Today",
                                hintStyle: AppStyle.fontD,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: IconButton(
                                  onPressed: () => openCalendarDialog(context),
                                  icon: const Icon(Icons.calendar_month),
                                  color: const Color(0xff1DA1F2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    SvgPicture.asset(
                      EmployeeImageConstant.rightarrow,
                      fit: BoxFit.fitWidth,
                    ),
                    const Gap(8),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0), // Padding around the container
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff949C9E),
                            width: 0.5), // Border for the container
                        borderRadius: BorderRadius.circular(8.0),
                        // Rounded corners
                      ),
                      child: Row(
                        children: <Widget>[
                          // Image icon on the left
                          SizedBox(
                            width: 130,
                            height: 40,
                            child: TextField(
                              controller: textCon2,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                hintText: "No date",
                                hintStyle: AppStyle.fontD,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: IconButton(
                                  onPressed: () => openCalendarDialog2(context),
                                  icon: const Icon(Icons.calendar_month),
                                  color: const Color(0xff1DA1F2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  color: Color.fromARGB(
                      255, 194, 194, 194), // Set the color of the line
                  width: double
                      .infinity, // Set the width of the line (1 pixel in this example)
                  height: 1, // Make the line as tall as the parent container
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 55.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius for curved edges
                        child: Material(
                          color: const Color(0xffEDF8FF),
                          child: InkWell(
                            onTap: () {
                              textCon2.clear();
                              textCon.clear();
                              textCon3.clear();
                              jobdesc.clear();
                              Navigator.of(context).pop();
                            },
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: AppStyle.fontL,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: 55.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius for curved edges
                        child: Material(
                          color: const Color(0xff1DA1F2),
                          child: InkWell(
                            onTap: () async {
                              await context.read<EmployeeCubit>().addData(
                                  Usermodel(
                                      username: textCon3.text,
                                      jobdescription: jobdesc.text,
                                      todate: textCon.text,
                                      nodate: textCon2.text));
                              // ignore: use_build_context_synchronously
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomePageEmployeeList()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Save",
                                style: AppStyle.fontM,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }

  void openCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => CalendarWidget(
        callbackfunc: (String calldate) {
          setState(() {
            text1 = calldate;

            if (text1.contains("January")) {
              String result =
                  text1.replaceAll("January", "01").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("Februrary", "02").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("March", "03").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("April", "04").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("May", "05").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("June", "06").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("July", "07").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("August", "08").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("September", "09").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("October", "10").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("November", "11").replaceAll(" ", "-");
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
              String result =
                  text1.replaceAll("December", "12").replaceAll(" ", "-");
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
    );
  }

  void openCalendarDialog2(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => CalendarWidgetnodate(
        callbackfunc: (String calldate) {
          setState(() {
            text1 = calldate;

            if (text1.contains("January")) {
              String result =
                  text1.replaceAll("January", "01").replaceAll(" ", "-");
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

              textCon2.text = result;

              print(result.substring(0, 2));
              print("it has octo");
            }
            if (text1.contains("Februrary")) {
              String result =
                  text1.replaceAll("Februrary", "02").replaceAll(" ", "-");
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
            if (text1.contains("March")) {
              String result =
                  text1.replaceAll("March", "03").replaceAll(" ", "-");
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
            if (text1.contains("April")) {
              String result =
                  text1.replaceAll("April", "04").replaceAll(" ", "-");
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
            if (text1.contains("May")) {
              String result =
                  text1.replaceAll("May", "05").replaceAll(" ", "-");
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
            if (text1.contains("June")) {
              String result =
                  text1.replaceAll("June", "06").replaceAll(" ", "-");
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
            if (text1.contains("July")) {
              String result =
                  text1.replaceAll("July", "07").replaceAll(" ", "-");
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
            if (text1.contains("August")) {
              String result =
                  text1.replaceAll("August", "08").replaceAll(" ", "-");
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
            if (text1.contains("September")) {
              String result =
                  text1.replaceAll("September", "09").replaceAll(" ", "-");
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
            if (text1.contains("October")) {
              String result =
                  text1.replaceAll("October", "10").replaceAll(" ", "-");
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
              textCon2.text = result;
              print("it has octo");
            }
            if (text1.contains("November")) {
              String result =
                  text1.replaceAll("November", "11").replaceAll(" ", "-");
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
            if (text1.contains("December")) {
              String result =
                  text1.replaceAll("December", "12").replaceAll(" ", "-");
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
    );
  }

  void showmodal(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ), // Customize the border radius
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 200,
              alignment: Alignment.center,
              child: ListView.separated(
                itemCount: _items.length, // Corrected property name
                separatorBuilder: (context, index) {
                  // Corrected property name
                  return const Divider(
                    height: 35,
                  );
                },
                itemBuilder: (context, index) {
                  // Changed itembuilder to itemBuilder
                  return Center(
                    child: GestureDetector(
                      child: Text(_items[index], style: AppStyle.fontD8),
                      onTap: () {
                        setState(() {
                          jobdesc.text = _items[index];
                          _selected = _items[index];
                        });
                        Navigator.of(context).pop(); // Corrected capitalization
                      },
                    ),
                  );
                },
              ),
            ),
          );
        });
  }
}
