import 'package:flutter/material.dart';

/// Botón de icono reutilizable con tooltip informativo.

class CustomIconButton extends StatelessWidget {
  final IconData iconName;
  final VoidCallback onPress;
  final String tooltipMessage;
  final Color customColor;

  const CustomIconButton({
    super.key,
    required this.iconName,
    required this.onPress,
    required this.tooltipMessage,
    required this.customColor,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipMessage,
      triggerMode: TooltipTriggerMode.longPress, // Solo se activa con long press, evitando interferir con el tap del IconButton
      verticalOffset: 20,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
      child: IconButton(
        icon: Icon(iconName),
        color: customColor,
        onPressed: onPress,
      ),
    );
  }
}
