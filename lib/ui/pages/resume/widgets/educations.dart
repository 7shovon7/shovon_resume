import 'package:flutter/material.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/common_widgets/unordered_list_item.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class ResumeEducations extends StatelessWidget {
  const ResumeEducations({
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
      itemCount: Shovon.educations.length,
      itemBuilder: (context, index) {
        final selectedEdu = Shovon.educations[index];
        final List<Widget> titleAndDate = [
          Text(
            selectedEdu.institution,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(selectedEdu.endingYear.toString()),
        ];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: UiConstants.generalVerticalContentPadding / 1.25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (shouldBreak) ...titleAndDate,
              if (!shouldBreak)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: titleAndDate,
                ),
              Text(
                selectedEdu.course,
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              const SizedBox(
                height: UiConstants.generalVerticalContentPadding / 1.5,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: selectedEdu.specialAchievements.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: UiConstants.generalVerticalContentPadding / 3.0,
                ),
                itemBuilder: (context, index) {
                  return UnorderedListItem(
                    text: selectedEdu.specialAchievements[index],
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
