import 'package:flutter/material.dart';
import 'package:mi_perfil_dev/data/project_data.dart';
import 'package:mi_perfil_dev/widgets/project_card.dart';

/// Pantalla que muestra la lista completa de proyectos del portafolio.
///
/// Los proyectos están definidos como datos estáticos directamente en este widget,
/// ya que el objetivo es presentar un CV digital sin necesidad de backend.
/// Cada proyecto se renderiza con [ProjectCard] mediante un [ListView.builder].
///
/// Se usa [NeverScrollableScrollPhysics] en el [ListView] porque el scroll
/// lo maneja el [SingleChildScrollView] padre, evitando conflictos de gestos.
class ProjectListScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Proyectos')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projectsData.length,
                itemBuilder: (context, index) {
                  final project = projectsData[index];
                  return ProjectCard(
                    name: project.name,
                    description: project.description,
                    rol: project.rol,
                    duration: project.duration,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
