import 'package:get/get.dart';
import 'package:reserva_canchas/app/controllers/controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
