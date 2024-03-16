import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";

class storyIg extends StatelessWidget {
  const storyIg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade200),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
            storyItem(
              title: 'StoryK..',
              image: 'assets/images/IMG_20220709_074319.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class storyItem extends StatelessWidget {
  const storyItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color(0XFFDE0046),
                  Color(0XFF7A34B),
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
