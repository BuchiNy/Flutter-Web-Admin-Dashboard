import 'package:admin/widget/custom_text.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Authentication", color: Colors.black, size: 20, weight: FontWeight.w600,
      ),
    );
  }
}
