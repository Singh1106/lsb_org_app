import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/beige.dart';
import 'package:lsb_organization/theme/golden.dart';
import 'package:lsb_organization/theme/lavenderhaze.dart';
import 'package:lsb_organization/theme/light.dart';
import 'package:lsb_organization/theme/mintyfresh.dart';
import 'package:lsb_organization/theme/oceanbreeze.dart';
import 'package:lsb_organization/theme/offwhite.dart';
import 'package:lsb_organization/theme/peachyglow.dart';
import 'package:lsb_organization/theme/pearlessence.dart';
import 'package:lsb_organization/theme/purple.dart';

class AppTheme {
  late String _name;
  late Color _primaryColor;
  late Color _secondaryColor;
  late Color _accentColor;
  late Color _backgroundColor;
  late TextStyle _headingStyle;
  late TextStyle _bodyTextStyle;
  late EdgeInsets _padding;
  late double _borderRadius;
  late double _elevation;
  late Color _formFieldFillColor;
  late Color _buttonBackgroundColor;
  late Color _buttonTextColor;

  String get name => _name;
  Color get primaryColor => _primaryColor;
  Color get secondaryColor => _secondaryColor;
  Color get accentColor => _accentColor;
  Color get backgroundColor => _backgroundColor;
  TextStyle get headingStyle => _headingStyle;
  TextStyle get bodyTextStyle => _bodyTextStyle;
  EdgeInsets get padding => _padding;
  double get borderRadius => _borderRadius;
  double get elevation => _elevation;
  Color get formFieldFillColor => _formFieldFillColor;
  Color get buttonBackgroundColor => _buttonBackgroundColor;
  Color get buttonTextColor => _buttonTextColor;

  set name(String name) => _name = name;
  set primaryColor(Color color) => _primaryColor = color;
  set secondaryColor(Color color) => _secondaryColor = color;
  set accentColor(Color color) => _accentColor = color;
  set backgroundColor(Color color) => _backgroundColor = color;
  set headingStyle(TextStyle style) => _headingStyle = style;
  set bodyTextStyle(TextStyle style) => _bodyTextStyle = style;
  set padding(EdgeInsets padding) => _padding = padding;
  set borderRadius(double radius) => _borderRadius = radius;
  set elevation(double elevation) => _elevation = elevation;

  set formFieldFillColor(Color formFieldFillColor) =>
      _formFieldFillColor = formFieldFillColor;

  set buttonBackgroundColor(Color buttonBackgroundColor) =>
      _buttonBackgroundColor = buttonBackgroundColor;

  set buttonTextColor(Color buttonTextColor) =>
      _buttonTextColor = buttonTextColor;

  AppTheme({
    required String name,
    required Color primaryColor,
    required Color secondaryColor,
    required Color accentColor,
    required Color backgroundColor,
    required TextStyle headingStyle,
    required TextStyle bodyTextStyle,
    required EdgeInsets padding,
    required double borderRadius,
    required double elevation,
    required Color formFieldFillColor,
    required Color buttonBackgroundColor,
    required Color buttonTextColor,
  }) {
    _name = name;
    _primaryColor = primaryColor;
    _secondaryColor = secondaryColor;
    _accentColor = accentColor;
    _backgroundColor = backgroundColor;
    _headingStyle = headingStyle;
    _bodyTextStyle = bodyTextStyle;
    _padding = padding;
    _borderRadius = borderRadius;
    _elevation = elevation;
    _formFieldFillColor = formFieldFillColor;
    _buttonBackgroundColor = buttonBackgroundColor;
    _buttonTextColor = buttonTextColor;
  }

  ThemeData toThemeData() {
    return ThemeData(
      primaryColor: primaryColor,
      hintColor: accentColor,
      backgroundColor: backgroundColor,
      // Add other theme properties as needed
      textTheme: TextTheme(
        headline6: headingStyle,
        bodyText2: bodyTextStyle,
      ),
      // Add additional theme properties according to your AppTheme
    );
  }
}

enum ThemeType {
  light,
  purple,
  golden,
  beige,
  offwhite,
  pearlessence,
  oceanbreeze,
  lavenderhaze,
  peachyglow,
  mintyfrezh,
  // Add more theme types if needed
}

class ThemeSelector {
  static ThemeType getCurrentTheme() {
    // Replace this logic with your method of retrieving the selected theme flag from app memory
    // For demonstration purposes, using a hardcoded value
    // final themes = ThemeType.values;
    // final randomIndex = Random().nextInt(themes.length);
    // return themes[randomIndex];
    return ThemeType.oceanbreeze;
  }

  static AppTheme getTheme() {
    final currentTheme = getCurrentTheme();

    switch (currentTheme) {
      case ThemeType.light:
        return LightTheme.theme;
      case ThemeType.purple:
        return PurpleTheme.theme;
      case ThemeType.golden:
        return GoldenTheme.theme;
      case ThemeType.offwhite:
        return OffWhiteTheme.theme;
      case ThemeType.beige:
        return BeigeTheme.theme;
      case ThemeType.pearlessence:
        return PearlEssenceTheme.theme;
      case ThemeType.oceanbreeze:
        return OceanBreezeTheme.theme;
      case ThemeType.lavenderhaze:
        return LavenderHazeTheme.theme;
      case ThemeType.peachyglow:
        return PeachyGlowTheme.theme;
      case ThemeType.mintyfrezh:
        return MintyFreshTheme.theme;
    }
  }
}
