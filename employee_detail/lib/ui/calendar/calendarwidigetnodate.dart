import 'package:employee_detail/ui/calendar/headerbutton.dart';
import 'package:employee_detail/utils/imagepath.dart';
import 'package:employee_detail/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'calendar.dart';

// typedef StringValue = String Function(String);

enum CalendarViews { dates, months, year }

class CalendarWidgetnodate extends StatefulWidget {
  final Function(String calldate) callbackfunc;
  @override
  _CalendarWidgetnodateState createState() => _CalendarWidgetnodateState();

  CalendarWidgetnodate({required this.callbackfunc});
}

class _CalendarWidgetnodateState extends State<CalendarWidgetnodate> {
  late DateTime _currentDateTime;
  late DateTime _selectedDateTime;
  late List<Calendar> _sequentialDates;
  late int midYear;
  CalendarViews _currentView = CalendarViews.dates;
  final List<String> _weekDays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];
  final List<String> _monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final List<String> _monthNamesshort = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];
  //final List<String> _yearNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  @override
  void initState() {
    super.initState();
    final date = DateTime.now();
    _currentDateTime = DateTime(date.year, date.month);
    _selectedDateTime = DateTime(date.year, date.month, date.day);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() => _getCalendar());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            height: 526,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 241, 238, 238),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: (_currentView == CalendarViews.dates)
                ? _datesView()
                : (_currentView == CalendarViews.months)
                    ? _showMonthsList()
                    : _yearsView(_currentDateTime.year)
            // child: (_currentView == CalendarViews.dates)? _datesView()
            ),
      ),
    );
  }

  hederButtonCont(
    String title,
    bool colorchange,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // widget.callbackfunc(
          //     '${_selectedDateTime.day} ${_monthNames[_currentDateTime.month - 1]} ${_currentDateTime.year}');
          Navigator.pop(context);
        },
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(8.0), // Adjust the radius for curved edges
          child: Material(
            color:
                colorchange ? const Color(0xffEDF8FF) : const Color(0xff1DA1F2),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    title,
                    style: colorchange ? AppStyle.fontF : AppStyle.fontM,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      // foreground
    );
  }

  // dates view
  Widget _datesView() {
    return Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  hederButtonCont("No date", false),
                  const Gap(10),
                  hederButtonCont(
                    "Today",
                    true,
                  ),
                ],
              ),
              const Gap(20),
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // prev month button

                  // month and year
                  _toggleBtn(false),
                  InkWell(
                    onTap: () {
                      setState(() => _currentView = CalendarViews.months);
                      // widget.callbackfunc(('${_selectedDateTime.day} ${_monthNames[_currentDateTime.month-1]} ${_currentDateTime.year}'));
                      //  Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        '${_selectedDateTime.day} ${_monthNames[_currentDateTime.month - 1]} ${_currentDateTime.year}',
                        style: const TextStyle(
                            color: Color(0xff323238),
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  // next month button
                  _toggleBtn(true),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(height: 310, child: _calendarBody()),
              const Spacer(),
              _buttonCancelCont(),
            ],
          )
        ]);
  }

  Widget _buttonCancelCont() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          EmployeeImageConstant.calender,
          fit: BoxFit.fitWidth,
        ),
        Text(
          '${_selectedDateTime.day} ${_monthNamesshort[_currentDateTime.month - 1]} ${_currentDateTime.year}',
          style: const TextStyle(
              color: Color(0xff323238),
              fontSize: 18,
              fontWeight: FontWeight.normal),
        ),
        const Spacer(),
        pendingButtonCancel(),
        const Gap(10),
        pendingButtonSave()
        //  pendingButtonCont()
      ],
    );
  }

  pendingButtonCancel() {
    return SizedBox(
      width: 55.0,
      height: 40.0,
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(8.0), // Adjust the radius for curved edges
        child: Material(
          color: const Color(0xffEDF8FF),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
    );
  }

  pendingButtonSave() {
    return SizedBox(
      width: 55.0,
      height: 40.0,
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(8.0), // Adjust the radius for curved edges
        child: Material(
          color: const Color(0xff1DA1F2),
          child: InkWell(
            onTap: () {
              widget.callbackfunc(
                  '${_selectedDateTime.day} ${_monthNames[_currentDateTime.month - 1]} ${_currentDateTime.year}');
              Navigator.pop(context);
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
    );
  }

  // next / prev month buttons
  Widget _toggleBtn(bool next) {
    return InkWell(
      onTap: () {
        if (_currentView == CalendarViews.dates) {
          setState(() => (next) ? _getNextMonth() : _getPrevMonth());
        } else if (_currentView == CalendarViews.year) {
          if (next) {
            midYear =
                (midYear == null) ? _currentDateTime.year + 9 : midYear + 9;
          } else {
            midYear =
                (midYear == null) ? _currentDateTime.year - 9 : midYear - 9;
          }
          setState(() {});
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 30,
        height: 30,
        child: Icon(
          (next) ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
          color: Color(0xff323238),
          size: 15,
        ),
      ),
    );
  }

  // calendar
  Widget _calendarBody() {
    if (_sequentialDates == null) return Container();
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: _sequentialDates.length + 7,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisCount: 7,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        if (index < 7) return _weekDayTitle(index);
        if (_sequentialDates[index - 7].date == _selectedDateTime)
          return _selector(_sequentialDates[index - 7]);
        return _calendarDates(_sequentialDates[index - 7]);
      },
    );
  }

  // calendar header
  Widget _weekDayTitle(int index) {
    return Text(
      _weekDays[index],
      style: TextStyle(color: Color(0xff323238), fontSize: 12),
    );
  }

  // calendar element
  Widget _calendarDates(Calendar calendarDate) {
    return InkWell(
      onTap: () {
        if (_selectedDateTime != calendarDate.date) {
          if (calendarDate.nextMonth) {
            _getNextMonth();
          } else if (calendarDate.prevMonth) {
            _getPrevMonth();
          }
          setState(() => _selectedDateTime = calendarDate.date);
        }
      },
      child: Center(
          child: Container(
        child: Text(
          '${calendarDate.date.day}',
          style: TextStyle(
              color: (calendarDate.thisMonth)
                  ? (calendarDate.date.weekday == DateTime.sunday)
                      ? Color(0xff323238)
                      : Color(0xff323238)
                  : (calendarDate.date.weekday == DateTime.sunday)
                      ? Color(0xff323238)
                      : Color(0xff323238)),
        ),
      )),
    );
  }

  // date selector
  Widget _selector(Calendar calendarDate) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          // color: Colors.white,
          // borderRadius: BorderRadius.circular(0),
          // border: Border.all(color: Colors.white, width: 4),
          // gradient: LinearGradient(
          //   colors: [Colors.black.withOpacity(0.1), Colors.white],
          //   stops: [0.1, 1],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff1DA1F2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            '${calendarDate.date.day}',
            style: TextStyle(
                color: Color.fromARGB(255, 248, 246, 246),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  // get next month calendar
  void _getNextMonth() {
    if (_currentDateTime.month == 12) {
      _currentDateTime = DateTime(_currentDateTime.year + 1, 1);
    } else {
      _currentDateTime =
          DateTime(_currentDateTime.year, _currentDateTime.month + 1);
    }
    _getCalendar();
  }

  // get previous month calendar
  void _getPrevMonth() {
    if (_currentDateTime.month == 1) {
      _currentDateTime = DateTime(_currentDateTime.year - 1, 12);
    } else {
      _currentDateTime =
          DateTime(_currentDateTime.year, _currentDateTime.month - 1);
    }
    _getCalendar();
  }

  // get calendar for current month
  void _getCalendar() {
    _sequentialDates = CustomCalendar().getMonthCalendar(
        _currentDateTime.month, _currentDateTime.year,
        startWeekDay: StartWeekDay.monday);
  }

  // show months list
  Widget _showMonthsList() {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => setState(() => _currentView = CalendarViews.year),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '${_currentDateTime.year}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff323238),
              ),
            ),
          ),
        ),
        const Divider(
          color: Color(0xff323238),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: _monthNames.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                _currentDateTime = DateTime(_currentDateTime.year, index + 1);
                _getCalendar();
                setState(() => _currentView = CalendarViews.dates);
              },
              title: Center(
                child: Text(
                  _monthNames[index],
                  style: TextStyle(
                    fontSize: 18,
                    color: (index == _currentDateTime.month - 1)
                        ? Colors.yellow
                        : Color(0xff323238),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // years list views
  Widget _yearsView(int midYear) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Spacer(),
            _toggleBtn(false),
            _toggleBtn(true),
          ],
        ),
        Container(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 20,
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                int thisYear;
                if (index < 2) {
                  thisYear = midYear - (2 - index);
                } else if (index > 2) {
                  thisYear = midYear + (index - 2);
                } else {
                  thisYear = midYear;
                }

                int currentYear = DateTime.now().year;
                return ListTile(
                  onTap: () {
                    //Check Current Year and previous 2 years
                    // int currentYear = DateTime.now().year;
                    if (thisYear == currentYear ||
                        thisYear == (currentYear - 1) ||
                        thisYear == (currentYear - 2)) {
                      _currentDateTime =
                          DateTime(thisYear, _currentDateTime.month);
                      _getCalendar();
                      setState(() => _currentView = CalendarViews.months);
                    }
                  },
                  title: Text(
                    '$thisYear',
                    style: TextStyle(
                      fontSize: 18,
                      color: thisYear == currentYear ||
                              thisYear == (currentYear - 1) ||
                              thisYear == (currentYear - 2)
                          ? ((thisYear == _currentDateTime.year)
                              ? Colors.yellow
                              : Color(0xff323238))
                          : Color(0xff323238),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
