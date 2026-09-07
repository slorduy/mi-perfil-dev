import 'package:flutter/material.dart';

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
          elevation: 4, // Controla la sombra de la tarjeta
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Esquinas redondeadas
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
                SizedBox(height: 8),
                Text(description),
                SizedBox(height: 8),
                Text('Rol: $rol'),
                SizedBox(height: 8),
                Text('Duracion: $duration'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
