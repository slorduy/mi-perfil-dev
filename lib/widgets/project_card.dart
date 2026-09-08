import 'package:flutter/material.dart';

/// Tarjeta que presenta la información detallada de un proyecto del portafolio.
///
/// Muestra nombre, descripción, rol ejercido y duración de participación.
class ProjectCard extends StatelessWidget {
  final String name;
  final String description;
  final String rol;
  final String duration;

  const ProjectCard({
    super.key,
    required this.name,
    required this.description,
    required this.rol,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 90, minWidth: 90),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Text('Rol: $rol'),
                const SizedBox(height: 8),
                Text('Duracion: $duration'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
