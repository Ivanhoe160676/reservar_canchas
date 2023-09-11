import 'package:get/get.dart';
import 'package:reserva_canchas/app/controllers/controllers.dart';

class CanchasInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CanchasController>(() => CanchasController());
  }
}
