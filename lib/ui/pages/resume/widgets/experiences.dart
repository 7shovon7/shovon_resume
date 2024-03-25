import 'package:flutter/material.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/common_widgets/unordered_list_item.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeExperiences extends StatelessWidget {
  const ResumeExperiences({
    super.key,
    required this.width,
    required this.breakingWidth,
  });

  final double width;
  final double breakingWidth;

  @override
  Widget build(BuildContext context) {
    bool shouldBreak = width < breakingWidth;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Shovon.experiences.length,
      itemBuilder: (context, index) {
        final selectedExp = Shovon.experiences[index];
        final titleAndDuration = [
          Text(
            selectedExp.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            selectedExp.isCurrent
                ? '${selectedExp.startMonth}, ${selectedExp.startYear} - Present'
                : '${selectedExp.startMonth}, ${selectedExp.startYear} - ${selectedExp.endMonth}, ${selectedExp.endYear}',
          ),
        ];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: UiConstants.generalVerticalContentPadding / 1.25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (shouldBreak) ...titleAndDuration,
              if (!shouldBreak)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: titleAndDuration,
                ),
              if (selectedExp.company != null)
                Text(
                  selectedExp.company!,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              const SizedBox(
                height: UiConstants.generalVerticalContentPadding / 1.5,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: selectedExp.responsibilities.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: UiConstants.generalVerticalContentPadding / 3.0,
                ),
                itemBuilder: (context, index) {
                  return UnorderedListItem(
                    text: selectedExp.responsibilities[index],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
