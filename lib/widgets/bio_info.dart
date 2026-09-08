import 'package:flutter/material.dart';

/// Sección de biografía del perfil.
///
/// Muestra un encabezado fijo "Bio" seguido del texto descriptivo recibido
/// como parámetro, permitiendo reutilizar el widget con distintos perfiles.
class BioInfo extends StatelessWidget {
  final String bioDescription;
  const BioInfo({super.key, required this.bioDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Bio', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(bioDescription),
      ],
    );
  }
}
