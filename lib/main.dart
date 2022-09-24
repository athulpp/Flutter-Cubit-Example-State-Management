import 'package:bloctimes/cubit/app_cubit.dart';
import 'package:bloctimes/cubit/app_cubit_logics.dart';
import 'package:bloctimes/pages/nav_pages/detail_page.dart';
import 'package:bloctimes/services/data_servixes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubit>(
          create: (context) => AppCubit(data: DataServices()),
          child: AppCubitLogics(),
        ));
  }
}
