import 'package:easy_localization/easy_localization.dart';
import 'package:certenz/bootstrap.dart';
import 'package:certenz/src/app/app.dart';
import 'package:certenz/src/localization/support_language.dart';

void main() async {
  bootstrap(() => EasyLocalization(
      supportedLocales: L10n.all,
      startLocale: L10n.all[1],
      fallbackLocale: L10n.all[1],
      path: 'assets/l10n',
      child: const App()));
}

/// run in terminal
/// flutter packages pub run build_runner build --delete-conflicting-outputs
/// flutter pub run easy_localization:generate -S assets/l10n -f keys -O lib/l10n -o locale_keys.g.dart
