import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) => const Row(
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rehab Hamdy',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Your Message',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text('12:00 PM'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}

/*
const Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 26.0,
            backgroundImage: AssetImage('assets/images/photo.jpeg'),),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(radius: 6,backgroundColor: Colors.green,)
        ],
      ),
      Column(
        children: [
          Expanded(child: Text('Rehab Hamdy',maxLines: 1,overflow: TextOverflow.ellipsis,textAlign:TextAlign.center,),),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Text('Your Message', maxLines: 1,overflow: TextOverflow.ellipsis,),),
                Text('12:00 PM'),
              ],
            ),
          ),
        ],
      ),
    ],
  );
* */
