import 'package:employee_detail/bloc/employee_cubit.dart';
import 'package:employee_detail/ui/addemplayeedetails.dart';
import 'package:employee_detail/ui/widget/customfloatingbutton.dart';
import 'package:employee_detail/utils/imagepath.dart';
import 'package:employee_detail/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomePageEmployeeList extends StatefulWidget {
  const HomePageEmployeeList({super.key});

  @override
  State<HomePageEmployeeList> createState() => _HomePageEmployeeListState();
}

class _HomePageEmployeeListState extends State<HomePageEmployeeList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<EmployeeCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Employee List",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.fontA),
          titleTextStyle: const TextStyle(fontSize: 14),
          // toolbarHeight: 80,
          //backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: BlocConsumer<EmployeeCubit, EmployeeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is EmployeeInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is EmployeeDataloading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is NoDataFound) {
              return Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      EmployeeImageConstant.norecordfound,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      bottom: 20.0, // Adjust the bottom margin as needed
                      right: 20.0, // Adjust the right margin as needed
                      child: MyFloatingButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddNewEmployeeDetails()),
                          );
                          print("object");
                        },
                      )),
                ],
              );
            }
            if (state is EmployeeDataloaded) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0xffF2F2F2),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, top: 15, bottom: 15),
                                child: Text(
                                  "Current employees",
                                  style: AppStyle.fontC1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                            minHeight: 100,
                            minWidth: double.infinity,
                            maxHeight: MediaQuery.of(context).size.width * 0.8),
                        child: ListView.builder(
                            itemCount: state.userlist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Slidable(
                                  enabled: true,
                                  endActionPane: ActionPane(
                                    extentRatio: 0.2,
                                    motion: StretchMotion(),
                                    //  extentRatio: 1,
                                    children: [
                                      SlidableAction(
                                        backgroundColor: Colors.red,
                                        //spacing: 4,
                                        foregroundColor: Colors.white,
                                        icon: Icons.delete,
                                        padding: EdgeInsets.zero,
                                        onPressed: (context) => {
                                          context
                                              .read<EmployeeCubit>()
                                              .deleteData(state.userlist[index])
                                        },
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          state.userlist[index].username,
                                          style: AppStyle.fontD81,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0.0,
                                            bottom: 0,
                                            right: 8,
                                            left: 8),
                                        child: Text(
                                          state.userlist[index].jobdescription,
                                          style: AppStyle.fontF,
                                        ),
                                      ),
                                      const Gap(8),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0.0,
                                            bottom: 8,
                                            right: 8,
                                            left: 8),
                                        child: Text(
                                          "From ${state.userlist[index].todate}",
                                          style: AppStyle.fontF,
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                        thickness: 0.5,
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0xffF2F2F2),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, top: 15, bottom: 15),
                                child: Text(
                                  "Previous employees",
                                  style: AppStyle.fontC1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                            minHeight: 100,
                            minWidth: double.infinity,
                            maxHeight: MediaQuery.of(context).size.width * 0.7),
                        child: ListView.builder(
                            itemCount: state.userlist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      state.userlist[index].username,
                                      style: AppStyle.fontD81,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0, bottom: 0, right: 8, left: 8),
                                    child: Text(
                                      state.userlist[index].jobdescription,
                                      style: AppStyle.fontF,
                                    ),
                                  ),
                                  const Gap(8),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0, bottom: 8, right: 8, left: 8),
                                    child: Text(
                                      "${state.userlist[index].todate}  ${state.userlist[index].nodate}",
                                      style: AppStyle.fontF,
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.5,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 20.0, // Adjust the bottom margin as needed
                      right: 20.0, // Adjust the right margin as needed
                      child: MyFloatingButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddNewEmployeeDetails()),
                          );
                        },
                      )),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
            // return Stack(
            //   children: [
            //     Center(
            //       child: SvgPicture.asset(
            //         EmployeeImageConstant.norecordfound,
            //         fit: BoxFit.fitWidth,
            //       ),
            //     ),
            //     Positioned(
            //         bottom: 20.0, // Adjust the bottom margin as needed
            //         right: 20.0, // Adjust the right margin as needed
            //         child: MyFloatingButton(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) =>
            //                       const AddNewEmployeeDetails()),
            //             );
            //             print("object");
            //           },
            //         )),
            //   ],
            // );
          },
        ),
      ),
    );
  }
}
