import 'package:get/get.dart';
import 'package:reserva_canchas/app/controllers/controllers.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
