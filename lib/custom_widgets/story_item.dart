import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 26.0,
              backgroundImage: AssetImage('assets/images/photo.jpeg'),
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            )
          ],
        ),
        Text(
          'Rehab Hamdy',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
