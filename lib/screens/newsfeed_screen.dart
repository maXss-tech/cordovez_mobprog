import 'package:cordovez_mobprog/widgets/newsfeed_card.dart';
import 'package:flutter/material.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: '【entity-Steve Rogers¦canonical_name=Steve Rogers】',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
          avatarPath: 'assets/images/captain_avatar.jpg',
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am 【entity-Iron Man¦canonical_name=Iron Man】. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
          avatarPath: 'assets/images/ironman_avatar.jpg',
          postImagePath: 'assets/images/iron_man.jpg',
        ),
      ],
    );
  }
}