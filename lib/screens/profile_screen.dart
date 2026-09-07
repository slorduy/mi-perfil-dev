import 'package:flutter/material.dart';
import 'package:mi_pefil_dev/widgets/bio_info.dart';
import 'package:mi_pefil_dev/widgets/info_card.dart';
import 'package:mi_pefil_dev/widgets/list_button.dart';

class ProfileScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi perfil')),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
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
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'MS. CHARLOTTE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20, // Tamaño de la fuente
                fontWeight: FontWeight.bold, // Negrita
              ),
            ),
            Text('Desarrollador', textAlign: TextAlign.center),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCard(title: '10', subtitle: 'proyectos'),
                  InfoCard(title: '13', subtitle: 'Experiencia'),
                  InfoCard(title: '9', subtitle: 'Repositorios'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: BioInfo(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8.0, // Espacio horizontal entre chips
                  runSpacing: 4.0, // Espacio vertical entre líneas
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
              child: ListButton(),
            ),
          ],
        ),
      ),
    );
  }
}

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
