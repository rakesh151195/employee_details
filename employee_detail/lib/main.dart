import 'package:device_preview/device_preview.dart';
import 'package:employee_detail/bloc/employee_cubit.dart';
import 'package:employee_detail/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  //runApp(const MyApp());
  // DevicePreview(
  //   enabled: true,
  //   builder: (context) => const MyApp(), // Wrap your app
  // );
  runApp(
    DevicePreview(
      enabled: false,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var provider = [
    BlocProvider(
      create: (context) => EmployeeCubit(),
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: provider,
      child: MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          // title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          home: const HomePageEmployeeList()),
    );
  }
}
