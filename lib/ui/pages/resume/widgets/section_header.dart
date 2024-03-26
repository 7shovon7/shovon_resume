import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeSectionHeader extends StatelessWidget {
  const ResumeSectionHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final headerText = Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: UiConstants.generalVerticalContentPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          context.width < 300
              ? Flexible(
                  child: headerText,
                )
              : headerText,
          const SizedBox(
            width: UiConstants.generalHorizontalContentPadding,
          ),
          const Flexible(
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
