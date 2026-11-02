
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    required this.logo,
    required this.title,
    super.key,
  });
  final Icon logo;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Container(
        width: 120,
        height: 150,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            logo,
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
