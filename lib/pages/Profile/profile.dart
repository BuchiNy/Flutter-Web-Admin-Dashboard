import 'package:admin/widget/custom_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Profile", color: Colors.black, size: 20, weight: FontWeight.w600,
      ),
    );
  }
}
