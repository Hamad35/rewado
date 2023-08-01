import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fskt/src/services/logger.dart';
import 'package:get/get.dart';

import 'package:fskt/src/utils/routes/app_pages.dart';
// services
import 'package:fskt/src/services/settings.dart';
// views
import 'package:fskt/src/ui/views/error.dart';

// ignore: must_be_immutable
/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  final SettingsService settings = Get.find<SettingsService>();

  MyApp({super.key}) {
    // TODO: implement MyApp
  }

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settings,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          // Custom Logging
          enableLog: true,
          logWriterCallback: Logger.write,
          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settings.getThemeMode,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          onUnknownRoute: (RouteSettings rs) => MaterialPageRoute(
            builder: (context) {
              return ErrorView(
                // icon: UIDataVector.vectorSadSmiley,
                message: 'Coming Soon!',
              );
            },
          ),
        );
      },
    );
  }
}
