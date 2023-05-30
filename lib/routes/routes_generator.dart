import 'package:flutter/material.dart';
import 'package:projeto1/pages/category.dart';
import 'package:projeto1/pages/home.dart';
import 'package:projeto1/pages/add_click.dart';
import 'package:projeto1/shared/constants.dart';

import '../pages/about.dart';
import '../pages/calendar.dart';

class RoutesGenerator {
  static const homePage = '/';
  static const addPage = '/clique/add';
  static const aboutPage = '/about';
  static const categoryPage = '/category';
  static const calendarPage = '/calendar';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return _goPage(const MyHomePage(userName: 'Rodrigo Mendes'));
      case addPage:
        return _goPage(const AddClickPage());
      case aboutPage:
        return _goPage(const AboutPage());
      case categoryPage:
        return _goPage(const CategoryPage());
      case calendarPage:
        return _goPage(const CalendarPage());
      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
