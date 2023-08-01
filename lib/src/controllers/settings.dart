import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fskt/src/services/settings.dart';

class SettingsController extends GetxController {

  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService = Get.find<SettingsService>();

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  late ThemeMode _themeMode;

  // Allow Widgets to read the user's preferred ThemeMode.
  ThemeMode get themeMode => _themeMode;

  @override
  Future<void> onInit() async {
    _themeMode = _settingsService.getThemeMode;
    print(_themeMode);
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    await _settingsService.loadSettings();
    _themeMode = _settingsService.getThemeMode;
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateThemeMode(newThemeMode);
  }
}
