import 'package:flutter/material.dart';

/// Botón de navegación con apariencia de fila de lista.

class ListButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ListButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onPressed,
      ),
    );
  }
}
