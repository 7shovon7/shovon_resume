import 'package:flutter/material.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeSectionHeader extends StatelessWidget {
  const ResumeSectionHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: UiConstants.generalVerticalContentPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            width: UiConstants.generalHorizontalContentPadding,
          ),
          const Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 2.0,
              child: Divider(
                color: UiConstants.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
