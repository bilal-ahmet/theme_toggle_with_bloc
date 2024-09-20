import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_bloc.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_event.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_state.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final read = context.read<ThemeBloc>();
        return MaterialApp(
          theme: state.themeData,
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("bloc theme toggle myself", style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
            ),
            body: Center(
              child: Switch(value: state.isDarkMode!, onChanged: (value) {
                read.add(ThemeToggleEvent());
              },),
            ),
          ),
        );
      },
    );
  }
}
