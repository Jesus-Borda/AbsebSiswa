
import 'package:app_escolar/src/widget/button_attendance.dart';
import 'package:flutter/material.dart';

class AttendanceModule extends StatelessWidget {
  const AttendanceModule({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 15, 89, 205),
        border: Border.all(
          color: Color.fromARGB(255, 15, 89, 205),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Today´s Attendance',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 240, 242, 245),
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Monday, 21 April 2025',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 240, 242, 245),
            ),
          ),
          SizedBox(height: 16),
          ButtonAttendance(icon: true)
        ]
      )
    );
  }
}
