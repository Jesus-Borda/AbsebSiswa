import 'package:app_escolar/src/widget/AttendanceModule.dart';
import 'package:app_escolar/src/widget/user_header.dart';
import 'package:app_escolar/src/widget/button_attendance.dart';
import 'package:app_escolar/src/widget/class_schedule_card.dart';
import 'package:app_escolar/src/widget/feature_card.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserHeader(),
            SizedBox(height: 20),
            AttendanceModule(),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FeatureCard(
                  logo: Icon(
                    Icons.history,
                    size: 50,
                    color: Color.fromARGB(255, 15, 89, 205),
                  ),
                  title: 'Students',
                ),
                FeatureCard(
                  logo: Icon(
                    Icons.calendar_month_rounded,
                    size: 50,
                    color: Color.fromARGB(255, 15, 89, 205),
                  ),
                  title: 'Attendance \nHistory',
                ),
                FeatureCard(
                  logo: Icon(
                    Icons.person,
                    size: 50,
                    color: Color.fromARGB(255, 15, 89, 205),
                  ),
                  title: 'My Profile',
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Today´s Schedule',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 35, 50, 79),
                        ),
                        
                      ),
                      SizedBox(width: 40),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 15, 89, 205),
                        ),
                      ),
                    ],
                  ),
                  ClassScheduleCard(className: 'Math Class', classTime: '10:00 AM - 11:30 AM', iconClass: Icons.calculate),
                  ClassScheduleCard(className: 'Science Class', classTime: '12:00 PM - 1:30 PM', iconClass: Icons.science),
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in_rounded),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 15, 89, 205),
        unselectedItemColor: Color.fromARGB(255, 132, 152, 175),
        onTap: (index) {
          // Handle navigation based on the selected index
        },
      ),
    );
  }
}
