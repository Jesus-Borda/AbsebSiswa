
import 'package:app_escolar/src/widget/button_attendance.dart';
import 'package:flutter/material.dart';

class ClassScheduleCard extends StatelessWidget {
  const ClassScheduleCard({
    super.key,
    required this.className,
    required this.classTime,
    required this.iconClass,
  });
  final IconData iconClass;
  final String className;
  final String classTime ; // Example class time

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 240, 242, 245),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              iconClass,
              size: 50,
              color: Color.fromARGB(255, 15, 89, 205),
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  className,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 35, 50, 79),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  classTime,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 137, 152, 175),
                  ),
                ),
                
              ],
            ),
            
            ButtonAttendance(icon: false)
          ],
        ),  
      ),
    );
  }
}
