import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 15, 89, 205),
                border: Border.all(
                  color: Color.fromARGB(255, 15, 89, 205),
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.school,
                size: 100,
                color: Color.fromARGB(255, 240, 242, 245),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Absen',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 5, 11, 44),
                  ),
                ),
                Text(
                  'Siswa',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 89, 205),
                  ),
                ),
              ],
            ),
            Text(
              'Mudah, Cepat, Akurat',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 5, 11, 44),
              ),
            ),
            Text(
              'Untuk Kehadiran Siswa',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 5, 11, 44),
              ),
            ),

            SizedBox(
              width: double.infinity, // Ocupa todo el ancho posible
              child: AspectRatio(
                aspectRatio: 16 / 16, // Proporción de aspecto deseada
                child: Image.asset(
                  'assets/images/landing.png',
                  fit: BoxFit.cover, //[cite: 1]
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),

              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 15, 89, 205),
                  ),
                ),
                onPressed: () {
                  context.pushNamed(
                    'register',
                  ); // Navegar a la página de registro usando GoRouter
                  // Acción al presionar el botón
                },
                child: SizedBox(
                        width: double.infinity,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 240, 242, 245),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 5, 11, 44),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed('login'); // Navegar a la página de inicio de sesión usando GoRouter
                    // Acción al presionar el botón
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 15, 89, 205),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
