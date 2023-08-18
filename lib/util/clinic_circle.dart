import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class ClinicCircle extends StatelessWidget {
  const ClinicCircle({Key? key, required this.child}) : super(key: key);
  final dynamic child;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary,
        ),
        child: Image.asset(child),
      ),
    );
  }
}
