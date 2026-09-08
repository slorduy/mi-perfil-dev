import 'package:flutter/material.dart';
import 'package:mi_perfil_dev/screens/project_list_screen.dart';
import 'package:mi_perfil_dev/widgets/bio_info.dart';
import 'package:mi_perfil_dev/widgets/icon_button.dart';
import 'package:mi_perfil_dev/widgets/info_card.dart';
import 'package:mi_perfil_dev/widgets/list_button.dart';

/// Pantalla principal que muestra el perfil profesional del desarrollador.
///
/// Es un [StatefulWidget] porque gestiona el estado local [isDestacated],
/// que controla si el perfil está marcado como favorito.
/// Compone los widgets de foto, estadísticas, bio, chips de habilidades
/// y el botón de navegación hacia la lista de proyectos.
class ProfileScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /// Indica si el perfil está marcado como destacado/favorito.
  bool isDestacated = false;

  /// Invierte el estado de destacado y fuerza la reconstrucción del widget
  /// para que el ícono de la estrella refleje el nuevo valor.
  void setDestacated() {
    setState(() {
      isDestacated = !isDestacated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi perfil')),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () =>
                        showFullImage(context, 'assets/images/profile.jpeg'),
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: const AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CustomIconButton(
                    iconName: isDestacated ? Icons.star : Icons.star_border,
                    tooltipMessage: 'Marcar como destacado',
                    customColor: Colors.yellow,
                    onPress: () {
                      // Se guarda el estado previo antes de invertirlo para mostrar
                      // el mensaje correcto en el SnackBar (ya que setDestacated lo
                      setDestacated();
                      // clearSnackBars evita que los SnackBars se acumulen en cola
                      // al presionar el botón varias veces seguidas.
                      final messenger = ScaffoldMessenger.of(context);
                      messenger.clearSnackBars();
                      messenger.showSnackBar(
                        SnackBar(
                          content: Text(
                            !isDestacated
                                ? 'Eliminado de destacado'
                                : 'Añadido a Destacado',
                          ),
                          duration: const Duration(milliseconds: 500),
                          action: SnackBarAction(
                            label: 'DESHACER',
                            onPressed: () {
                              // Solo revierte el estado sin mostrar otro SnackBar,
                              // evitando el ciclo infinito de notificaciones.
                              setState(() => isDestacated = !isDestacated);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            const Text(
              'MS. CHARLOTTE',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('Desarrollador', textAlign: TextAlign.center),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InfoCard(title: '10', subtitle: 'proyectos'),
                  InfoCard(title: '13', subtitle: 'Experiencia'),
                  InfoCard(title: '9', subtitle: 'Repositorios'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const BioInfo(
                bioDescription: 'Desarrollador de Software apasionado por construir aplicaciones móviles funcionales y escalables. Enfocado en el desarrollo con Flutter y Dart, transformando ideas en experiencias de usuario intuitivas, limpias y atractivas. Siempre aprendiendo nuevas tecnologías y mejores prácticas de código.',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: const [
                    Chip(label: Text('Flutter')),
                    Chip(label: Text('Dart')),
                    Chip(label: Text('Firebase')),
                    Chip(label: Text('Git')),
                    Chip(label: Text('REST API')),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListButton(
                title: 'Ver proyectos',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProjectListScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Abre un [Dialog] de pantalla completa para visualizar una imagen con zoom.
///
/// Usa [InteractiveViewer] para permitir paneo y zoom hasta 4×.
/// El fondo semitransparente y el botón de cierre en esquina superior derecha
/// siguen la convención de visor de imágenes móvil.
void showFullImage(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.black.withOpacity(0.9),
        insetPadding: EdgeInsets.zero,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Center(
              child: InteractiveViewer(
                panEnabled: true,
                minScale: 0.5,
                maxScale: 4.0,
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      );
    },
  );
}
