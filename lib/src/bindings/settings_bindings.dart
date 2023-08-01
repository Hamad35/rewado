
import 'package:get/get.dart';
import '../controllers/settings.dart';

class SettingsBindings extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}