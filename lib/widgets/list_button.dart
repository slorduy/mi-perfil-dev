import 'package:flutter/material.dart';
import 'package:mi_pefil_dev/screens/project_list_screen.dart';

class ListButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        // Icono izquierdo
        title: const Text('Ver Proyectos'),
        trailing: const Icon(
          Icons.arrow_forward_ios, // Flecha a la derecha
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProjectListScreen()),
          );
        },
      ),
    );
  }
}
