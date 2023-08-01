
import 'package:get/get.dart';
import '../controllers/home.dart';

class HomeBindings extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}