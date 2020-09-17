# flutter_test
 flutter test, example

# Ref
-   [flutter/website/examples/internationalization/](https://github.com/flutter/website/tree/master/examples/internationalization)
-   [Flutter - 다국어 지원하기 (Localization and Internalization)](https://software-creator.tistory.com/24?category=681555)

# Process
1. Modify lib/src/i18n/message.dart
2. CLI: $ flutter pub run intl_translation:extract_to_arb --output-dir=lib/src/i18n lib/src/i18n/messages.dart
3. copy intl_messages.arb to *intl_{lang}.arb*
4. *modify intl_{lang}.arb*
5. CLI: $ flutter pub run intl_translation:generate_from_arb --output-dir=lib/src/i18n --no-use-deferred-loading lib/src/i18n/messages.dart lib/src/i18n/intl_*.arb
6. IOS add info.plist
```xml
<key>CFBundleLocalizations</key>
<array>
  <string>en</string>
  <string>ko</string>
  <!-- ... -->
</array>
```