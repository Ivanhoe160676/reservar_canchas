import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:reserva_canchas/app/controllers/canchas_info_controller.dart';
import 'package:reserva_canchas/routes/app_pages.dart';
import 'package:reserva_canchas/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ReservaCanchas());
}

class ReservaCanchas extends StatelessWidget {
  const ReservaCanchas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CanchasController()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reserva Canchas',
        initialRoute: AppRoutes.login,
        getPages: AppPages.pages,
      ),
    );
  }
}
