import 'package:flutter/material.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeHeaderSection extends StatelessWidget {
  const ResumeHeaderSection({
    super.key,
    required this.width,
    required this.breakingWidth,
  });

  final double width;
  final double breakingWidth;

  @override
  Widget build(BuildContext context) {
    bool shouldBreak = width < breakingWidth;

    final nameAndTitle = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:
          shouldBreak ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          Shovon.fullName,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          Shovon.title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: UiConstants.generalTextColor,
              ),
        ),
      ],
    );

    final ppSection = SizedBox(
      height: 120.0,
      child: Image.asset(
        Shovon.pp,
        fit: BoxFit.fitHeight,
      ),
    );

    if (shouldBreak) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameAndTitle,
          ppSection,
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameAndTitle,
          ppSection,
        ],
      );
    }
  }
}
