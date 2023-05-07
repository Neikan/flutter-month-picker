// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';

// Project imports:
import 'package:customizable_month_picker_example/presentation/ui/screens/screen_home/screen_home.dart';
import 'package:customizable_month_picker_example/presentation/ui/styles/themes.dart';

const _localizationsDelegates = <LocalizationsDelegate<dynamic>>[
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

const _supportedLocales = [
  Locale('ar'),
  Locale('de'),
  Locale('en'),
  Locale('es'),
  Locale('fa'),
  Locale('fr'),
  Locale('it'),
  Locale('ja'),
  Locale('ru'),
  Locale('zh'),
];

class CMPApp extends StatelessWidget {
  const CMPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: _localizationsDelegates,
      supportedLocales: _supportedLocales,
      theme: defaultTheme,
      home: const ScreenHome(),
    );
  }
}
