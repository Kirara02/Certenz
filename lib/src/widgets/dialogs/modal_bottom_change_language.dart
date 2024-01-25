import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/widgets/radio/language_radio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ModalBottomChangeLanguage extends StatefulWidget {
  const ModalBottomChangeLanguage({super.key});

  @override
  State<ModalBottomChangeLanguage> createState() =>
      _ModalBottomChangeLanguageState();
}

class _ModalBottomChangeLanguageState extends State<ModalBottomChangeLanguage> {
  Future<void> _changeLang(Locale lang) async {
    await context.setLocale(lang);
    await WidgetsBinding.instance.performReassemble();
  }

  @override
  Widget build(BuildContext context) {
    String language = context.locale.toString();

    return Container(
      height: AppScreens.height * 0.4,
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.dropdown_text_static_select_language.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: DummyService.listLanguages
                  .map(
                    (e) => LanguageRadio(
                      value: e['value'],
                      groupValue: language,
                      title: e['title'],
                      onChanged: (value) {
                        if (value != null) {
                          _changeLang(Locale(e['value']));

                          setState(() {
                            language = value;
                          });
                        }
                      },
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
