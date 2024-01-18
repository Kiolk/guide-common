import 'package:common/utils/localization_keys.dart';
import 'package:flutter/cupertino.dart';

enum AvailableLanguage {
  be('be'),
  ru('ru'),
  en('en');

  static const AvailableLanguage defaultLanguage = en;

  final String languageCode;

  const AvailableLanguage(this.languageCode);

  Locale locale() {
    switch (this) {
      case en:
        return const Locale('en', 'EN');
      case ru:
        return const Locale('ru', 'RU');
      case be:
        return const Locale('be', 'BE');
    }
  }

  static Locale getLocale(String? code) {
    switch (getAvailableLanguage(code)) {
      case AvailableLanguage.en:
        return const Locale('en', 'EN');
      case AvailableLanguage.ru:
        return const Locale('ru', 'RU');
      case AvailableLanguage.be:
        return const Locale('be', 'BE');
    }
  }

  String getLocaleName() {
    switch (getAvailableLanguage(languageCode)) {
      case AvailableLanguage.en:
        return LocalisationKeys.englishTranslation;
      case AvailableLanguage.ru:
        return LocalisationKeys.russianTranslation;
      case AvailableLanguage.be:
        return LocalisationKeys.belarusianTranslation;
    }
  }

  static AvailableLanguage getAvailableLanguage(String? code) {
    switch (code) {
      case 'be':
        return AvailableLanguage.be;
      case 'en':
        return AvailableLanguage.en;
      case 'ru':
        return AvailableLanguage.ru;
      default:
        return AvailableLanguage.defaultLanguage;
    }
  }
}
