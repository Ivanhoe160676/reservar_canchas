import 'package:flutter/material.dart';
import 'package:reserva_canchas/app/models/canchas_model.dart';

class CanchasController extends ChangeNotifier {
  List<Cancha> canchas = [];

  CanchasController() {
    canchas = List.generate(
      5,
      (index) => Cancha(
        image: 'assets/images/cancha${index + 1}.jpg',
        title: 'Cancha ${index + 1}',
        subtitle: 'Cancha de Fútbol',
        price: '200',
        status: 'Disponible',
      ),
    );
  }

  // Método para reservar una cancha
  void reservarCancha(int canchaIndex) {
    if (canchaIndex >= 0 && canchaIndex < canchas.length) {
      canchas[canchaIndex].status = 'Reservada';
      notifyListeners();
    }
  }

  // Método para liberar una cancha
  void liberarCancha(int index) {
    if (index >= 0 && index < canchas.length) {
      canchas[index].status = 'Disponible';
    }
  }
}
