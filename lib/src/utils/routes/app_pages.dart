import 'package:get/get.dart';

// bindings
import 'package:fskt/src/bindings/home_bindings.dart';
import 'package:fskt/src/bindings/settings_bindings.dart';

// routes
import './app_routes.dart';

// views
import 'package:fskt/src/ui/views/home.dart';
import 'package:fskt/src/ui/views/error.dart';
import 'package:fskt/src/ui/views/settings.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const String INITIAL = Routes.homeRoute;
  static final List<GetPage<dynamic>> routes = [
    // login and registrations
    // GetPage(
    //   name: Routes.splashRoute,
    //   page: () => const SampleItemListView(),
    // ),
    GetPage(
      name: Routes.homeRoute,
      binding: HomeBindings(),
      page: () => HomeScreen(),
      // middlewares: [

      // ],
    ),
    GetPage(
        name: Routes.settingsRoute,
        page: () => SettingsView(),
        binding: SettingsBindings(),
        // children: [
          // GetPage(
          //   name: 'page1/',
          //   page: () => const SampleItemListView(),
          // ),
          // GetPage(
          //   name: 'page2/',
          //   page: () => const SampleItemListView(),
          // ),
        // ]
        ),
    GetPage(
      name: Routes.errorRoute,
      page: () => ErrorView(),
    ),
  ];
}
