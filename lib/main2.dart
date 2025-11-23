import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Mi App')),
        body: const Center(
          child: MitarjetaPersonalizada(
            titulo: 'Tarjeta Principal de la App',
            subtitulo: 'Tarjeta Secundaria de la App',
          ),
        ),
      ),
    );
  }
}

class MitarjetaPersonalizada extends StatelessWidget {
  final String titulo;
  final String subtitulo;

  const MitarjetaPersonalizada({
    super.key,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(subtitulo),
        ],
      ),
    );
  }
}
