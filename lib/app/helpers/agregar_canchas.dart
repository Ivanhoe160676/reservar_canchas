import 'dart:convert';

import 'package:reserva_canchas/app/models/canchas_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveCanchasToStorage(List<Cancha> canchas) async {
  final prefs = await SharedPreferences.getInstance();
  final canchasData = canchas.map((cancha) => cancha.toJson()).toList();
  await prefs.setStringList('canchas', canchasData);
}

Future<List<Cancha>> getCanchasFromStorage() async {
  final prefs = await SharedPreferences.getInstance();
  final canchasData = prefs.getStringList('canchas');

  if (canchasData != null) {
    final canchas = canchasData.map((canchaJson) {
      final Map<String, dynamic> data = json.decode(canchaJson);
      return Cancha.fromMap(data);
    }).toList();

    return canchas;
  } else {
    // Si no hay datos en SharedPreferences, retorna una lista vacía
    return [];
  }
}
