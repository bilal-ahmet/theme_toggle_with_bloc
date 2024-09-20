import 'package:flutter/material.dart';
import 'package:theme_toggle_bloc_myself/theme/dark_mode.dart';
import 'package:theme_toggle_bloc_myself/theme/light_mode.dart';

sealed class ThemeState {
  final ThemeData? themeData;
  final bool? isDarkMode;

  ThemeState({required this.themeData, required this.isDarkMode});
}


final class ThemeDarkState extends ThemeState{
  ThemeDarkState() : super(themeData: darkMode, isDarkMode: true);
}

final class ThemeLightState extends ThemeState{
  ThemeLightState() : super(themeData: lightMode, isDarkMode: false);
}