import 'package:flutter/material.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeContactsItem extends StatelessWidget {
  const ResumeContactsItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: UiConstants.brown,
          size: 22.0,
        ),
        const SizedBox(
          width: UiConstants.generalHorizontalContentPadding / 2.5,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
