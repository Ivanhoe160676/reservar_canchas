import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:reserva_canchas/app/controllers/controllers.dart';
import 'package:reserva_canchas/app/models/canchas_model.dart';

class CanchasInfo extends StatelessWidget {
  const CanchasInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final canchasController = Get.find<CanchasController>();
    final Cancha cancha = Get.arguments as Cancha;
    final int canchaIndex = canchasController.canchas.indexOf(cancha);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de la Cancha'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              cancha.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Table(
                    children: [
                      TableRow(children: [
                        const Text(
                          'Nombre de la Cancha:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          cancha.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        const Text(
                          'Tipo de Cancha:',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          cancha.subtitle,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        const Text(
                          'Precio:',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          cancha.price,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        const Text(
                          'Estado:',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          cancha.status,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: AppButton(
                        width: MediaQuery.of(context).size.width * 0.8,
                        text: 'Reservar',
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        color: Colors.blue,
                        onTap: () {
                          showCupertinoDialog(
                              context: context,
                              builder: (context) {
                                return CupertinoAlertDialog(
                                  title: const Text('Reserva'),
                                  content: const Text(
                                      '¿Desea reservar esta cancha?'),
                                  actions: [
                                    CupertinoDialogAction(
                                      child: const Text(
                                        'Cancelar',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      onPressed: () {
                                        canchasController
                                            .reservarCancha(canchaIndex);
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoDialogAction(
                                      child: const Text('Aceptar'),
                                      onPressed: () {
                                        canchasController
                                            .reservarCancha(canchaIndex);
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              });
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
