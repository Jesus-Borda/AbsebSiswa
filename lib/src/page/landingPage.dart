import 'package:app_escolar/src/widget/UserHeader.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({ Key? key }) : super(key: key);

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
            Container(
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
                  Material(
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
                            Icon(Icons.check_circle_outline, color: Color.fromARGB(255, 33, 184, 130)),
                            SizedBox(width: 8),
                            Text(
                              'Present',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 33, 184, 130),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
