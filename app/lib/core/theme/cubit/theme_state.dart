import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeMode themeMode;
  final Locale locale;

  const ThemeState({
    this.themeMode = ThemeMode.system,
    this.locale = const Locale('en'),
  });


  @override
  List<Object> get props => [themeMode, locale];
}
