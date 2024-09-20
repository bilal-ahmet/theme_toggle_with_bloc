import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_bloc.dart';
import 'package:theme_toggle_bloc_myself/pages/my_app.dart';

void main() {
  runApp(
    BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: const MyApp()
    )
  );
}


