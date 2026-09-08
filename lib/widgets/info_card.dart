import 'package:flutter/material.dart';

/// Tarjeta compacta que muestra una estadística del perfil.
///
/// Diseñada para usarse en fila (ej. proyectos, años de experiencia, repositorios).
/// El tamaño mínimo garantiza uniformidad visual entre las tres tarjetas.
class InfoCard extends StatelessWidget {
  /// Valor principal mostrado en grande (ej. "13").
  final String title;

  /// Etiqueta descriptiva del valor (ej. "Experiencia").
  final String subtitle;

  const InfoCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 90, minWidth: 90),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(subtitle),
            ],
          ),
        ),
      ),
    );
  }
}
