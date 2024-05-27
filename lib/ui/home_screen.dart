import 'package:flutter/material.dart';
import 'package:messenger_application/custom_widgets/chat_item.dart';
import 'package:messenger_application/custom_widgets/story_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/photo.jpeg'),
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            const Text(
              'Chats',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black12,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black12,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_calendar_outlined),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SizedBox(
                height: screenHeight * 0.13,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const StoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: screenWidth * 0.03,
                        ),
                    itemCount: 12),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const ChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: screenHeight * 0.03,
                      ),
                  itemCount: 12),
            ],
          ),
        ),
      ),
    );
  }
}
