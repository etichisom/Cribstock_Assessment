import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
          image: DecorationImage(
              image:AssetImage("assest/profile.png")
          )
        ),
      ),
    );
  }
}
