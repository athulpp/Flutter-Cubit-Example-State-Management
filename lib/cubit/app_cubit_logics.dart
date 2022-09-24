import 'package:bloctimes/cubit/app_cubit.dart';
import 'package:bloctimes/cubit/app_cubit_state.dart';
import 'package:bloctimes/pages/nav_pages/home_page.dart';
import 'package:bloctimes/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubit, CubitsStates>(
      builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }
        if (state is LoadedState) {
          return HomePage();
        }
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      },
    ));
  }
}
