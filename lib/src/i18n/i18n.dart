import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class I18n {
  I18n(this.locale);

  final Locale locale;

  static I18n of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
      'n0': 'Zero',
      'n1': 'One',
      'n2': 'Two',
      'n3': 'Three',
      'n4': 'Four',
      'n5': 'Five',
      'n6': 'Six',
      'n7': 'Seven',
      'n8': 'Eight',
      'n9': 'Nine',
      'n10': 'Ten',
      'n11': 'Eleven',
      'n12': 'Twelve',
    },
    'ko': {
      'title': '안녕하세요.',
      'n0': '영',
      'n1': '일',
      'n2': '이',
      'n3': '삼',
      'n4': '사',
      'n5': '오',
      'n6': '육',
      'n7': '칠',
      'n8': '팔',
      'n9': '구',
      'n10': '십',
      'n11': '십일',
      'n12': '십이',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode ?? 'en']['title'];
  }

  String tr(txt) {
    return _localizedValues[locale.languageCode ?? 'en'][txt] ?? '';
  }
}

class I18nDelegate extends LocalizationsDelegate<I18n> {
  const I18nDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ko'].contains(locale.languageCode);

  @override
  Future<I18n> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of Local.
    return SynchronousFuture<I18n>(I18n(locale));
  }

  @override
  bool shouldReload(I18nDelegate old) => false;
}
