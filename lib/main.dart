import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:solid_test/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget.
///
/// This widget serves as the entry point of the application and configures
/// the MaterialApp with the desired theme, localization, and home page.
class MyApp extends StatelessWidget {
  /// const constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en'), // English
        Locale('uk'), // Ukrainian
      ],
      home: const HomePage(),
    );
  }
}
