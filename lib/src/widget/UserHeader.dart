
import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
    
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage('assets/images/avatars/felix.png'),
            onBackgroundImageError: (exception, stackTrace) {
              debugPrint('Error loading avatar image: $exception');
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
            
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 137, 152, 175),
                  ),
                ),
                Text(
                  'Carolina Torres',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 35, 50, 79),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Color.fromARGB(255, 35, 50, 79),
              size: 26,
            ),
          ),
        ], 
      ),
    );
  }
}