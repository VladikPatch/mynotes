import 'package:flutter/material.dart';

class LocalizationProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!['en', 'sv'].contains(locale.languageCode)) return;
    _locale = locale;
    notifyListeners();
  }
}
