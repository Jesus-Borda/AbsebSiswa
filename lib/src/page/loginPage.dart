import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              'Login to your account',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 5, 11, 44),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscureText,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ButtonStyle(
                      
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 15, 89, 205),
                      ),
                    ),
                    onPressed: () {
                                            context.pushNamed('landing'); // Navegar a la página de inicio de sesión usando GoRouter

                      // Acción al presionar el botón
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 240, 242, 245),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 15, 89, 205),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 5, 11, 44),
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 5, 11, 44),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 5, 11, 44),
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 60,
                            height: 60,
                          child: Image.asset(
                            'assets/images/google.png',
                                              fit: BoxFit.cover, //[cite: 1]

                          ),
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?",style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 5, 11, 44),
                      ),),
                      TextButton(
                        
                        onPressed: () {
                          // Acción al presionar el botón
                        },
                        child: Text(
                          'Register',
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
          ],
        ),
      ),
    );
  }
}
