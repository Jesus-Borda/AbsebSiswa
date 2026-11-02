
import 'package:flutter/material.dart';

class ButtonAttendance extends StatelessWidget {
  const ButtonAttendance({
    super.key,
    required this.icon,
  });
  final bool icon;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 218, 255, 240), // Fondo blanco grisáceo suave
      borderRadius: BorderRadius.circular(30), // Forma de cápsula (pill)
      child: InkWell(
        borderRadius: BorderRadius.circular(30), // Forma de cápsula (pill)
        onTap: () {
          // Acción al presionar el botón
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon) ...[
                Icon(Icons.check_circle_outline, color: Color.fromARGB(255, 33, 184, 130)),
              ],
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Present',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 33, 184, 130),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
