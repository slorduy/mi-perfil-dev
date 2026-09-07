import 'package:flutter/material.dart';
import 'package:mi_pefil_dev/models/project_model.dart';
import 'package:mi_pefil_dev/widgets/project_card.dart';

class ProjectListScreen extends StatelessWidget {
  final List<ProjectModel> projectsList = [
    ProjectModel(
      name: 'App Banco de Bogotá',
      description:
          'Proyecto de app personas para gestión bancaria y transferencias',
      rol: 'Desarrollador Flutter',
      duration: '3 años',
    ),
    ProjectModel(
      name: 'E-commerce Móvil',
      description:
          'Catálogo de productos con carrito de compras y pasarela de pagos',
      rol: 'Desarrollador Frontend',
      duration: '1.5 años',
    ),
    ProjectModel(
      name: 'Portal de Salud & Citas',
      description:
          'Plataforma para reserva de citas médicas y consulta de exámenes',
      rol: 'Desarrollador Full Stack Mobile',
      duration: '8 meses',
    ),
    ProjectModel(
      name: 'Dashboard de Logística',
      description: 'Rastreo de envíos en tiempo real con integración de mapas',
      rol: 'Desarrollador Flutter Senior',
      duration: '1 año',
    ),
    ProjectModel(
      name: 'Wallet Crypto & Multi-moneda',
      description:
          'Billetera digital para gestión de activos y transacciones rápidas',
      rol: 'Desarrollador Flutter Lead',
      duration: '2 años',
    ),
    ProjectModel(
      name: 'App de Deliveries & Delivery Tracking',
      description:
          'Aplicación para seguimiento de pedidos e itinerarios en mapa activo',
      rol: 'Desarrollador Mobile',
      duration: '1 año',
    ),
    ProjectModel(
      name: 'Sistema de Reservas Hoteleras',
      description: 'Plataforma de búsqueda y reserva de alojamiento con pasarela de pagos',
      rol: 'Desarrollador Frontend',
      duration: '6 meses',
    ),
    ProjectModel(
      name: 'Streaming de Música & Podcasts',
      description: 'App de reproducción en segundo plano y descarga de contenido offline',
      rol: 'Desarrollador Flutter',
      duration: '1.5 años',
    ),
    ProjectModel(
      name: 'App de Fitness & Rutinas',
      description: 'Seguimiento de entrenamiento personalizado y gráficos de rendimiento',
      rol: 'Desarrollador Mobile',
      duration: '1 año',
    ),
  ];
  new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Proyectos')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                  final project = projectsList[index];
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
