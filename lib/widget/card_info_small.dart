import 'package:flutter/material.dart';

import '../constants/style.dart';
import 'custom_text.dart';

class CardInfoSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final Function onTap;

  const CardInfoSmall({Key? key,
    required this.title,
    required this.value,
    required this.isActive,
    required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap(),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? active : lightGrey, width: 5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                color: isActive ? active : lightGrey,
                weight: FontWeight.w300,
                size: 24,
                text: title,
              ),
              CustomText(
                color: isActive ? active : lightGrey,
                weight: FontWeight.bold,
                size: 24,
                text: title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
