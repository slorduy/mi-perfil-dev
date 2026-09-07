import 'package:flutter/material.dart';

class BioInfo extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bio', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(
          'Desarrollador de Software apasionado por construir aplicaciones móviles funcionales y escalables. Enfocado en el desarrollo con Flutter y Dart, transformando ideas en experiencias de usuario intuitivas, limpias y atractivas. Siempre aprendiendo nuevas tecnologías y mejores prácticas de código.',
        ),
      ],
    );
  }
}
