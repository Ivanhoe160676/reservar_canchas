import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserva_canchas/app/models/canchas_model.dart';
import 'package:reserva_canchas/routes/app_routes.dart';

class CanchasWidget extends StatelessWidget {
  final Cancha cancha;
  final int canchaIndex;
  final Function(int) reservarCancha;
  const CanchasWidget(
      {Key? key,
      required this.cancha,
      required this.canchaIndex,
      required this.reservarCancha})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.canchasInfo, arguments: cancha);
        },
        child: Container(
          color: Colors.purple,
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                child: Image.asset(cancha.image),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cancha.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      cancha.subtitle,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      cancha.price,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      cancha.status,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
