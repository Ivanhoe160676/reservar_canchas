import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserva_canchas/app/controllers/controllers.dart';
import 'package:reserva_canchas/app/helpers/agregar_canchas.dart';
import 'package:reserva_canchas/app/models/canchas_model.dart';
import 'package:reserva_canchas/app/views/global/widgets/canchas_widget.dart';
import 'package:reserva_canchas/app/views/global/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cancha> canchas = [];

  @override
  void initState() {
    super.initState();
    getCanchasFromStorage().then((canchasFromStorage) {
      setState(() {
        canchas = canchasFromStorage;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final canchasController = Provider.of<CanchasController>(context);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Reservar Canchas'),
      ),
      body: ListView.builder(
        itemCount: canchas.length,
        itemBuilder: (context, index) {
          return CanchasWidget(
            cancha: canchas[index],
            canchaIndex: index,
            reservarCancha: canchasController.reservarCancha,
          );
        },
      ),
    );
  }
}
