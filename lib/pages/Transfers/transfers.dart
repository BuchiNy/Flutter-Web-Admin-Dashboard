import 'package:admin/widget/custom_text.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Transfer", color: Colors.black, size: 20, weight: FontWeight.w600,
      ),
    );
  }
}
