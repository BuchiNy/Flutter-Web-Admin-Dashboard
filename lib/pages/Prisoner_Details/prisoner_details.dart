import 'package:admin/widget/custom_text.dart';
import 'package:flutter/material.dart';

class PrisonerDetails extends StatelessWidget {
  const PrisonerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Prisoner Details", color: Colors.black, size: 20, weight: FontWeight.w600,
      ),
    );
  }
}
