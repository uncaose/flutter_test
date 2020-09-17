import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

class I18n {
  static Future<I18n> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new I18n();
    });
  }

  static I18n of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }
}

class I18nDelegate extends LocalizationsDelegate<I18n> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ko'].contains(locale.languageCode);
  }

  @override
  Future<I18n> load(Locale locale) {
    return I18n.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<I18n> old) {
    return false;
  }
}
