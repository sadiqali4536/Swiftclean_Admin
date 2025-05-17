import 'package:flutter/material.dart';

class ReviewsUser extends StatefulWidget {
  const ReviewsUser({super.key});

  @override
  State<ReviewsUser> createState() => _ReviewsUserState();
}

class _ReviewsUserState extends State<ReviewsUser> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.black,
        )
      ],
    );
  }
}