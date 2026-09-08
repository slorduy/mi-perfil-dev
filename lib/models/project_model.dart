/// Modelo de datos que representa un proyecto del portafolio profesional.
///
/// Contiene información básica para mostrar en la tarjeta de cada proyecto:
/// nombre, descripción breve, rol ejercido y duración de participación.
class ProjectModel {
  final String name;
  final String description;

  /// Rol que desempeñó el desarrollador en el proyecto.
  final String rol;

  /// Tiempo de participación expresado en texto libre (ej. "1.5 años", "8 meses").
  final String duration;

  new({
    required this.name,
    required this.description,
    required this.rol,
    required this.duration,
  });
}
