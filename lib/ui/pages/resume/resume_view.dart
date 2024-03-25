import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/common_widgets/unordered_list_item.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/resume_contacts_item.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/section_header.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: UiConstants.horizontalPagePadding,
            vertical: UiConstants.verticalPagePadding,
          ),
          children: [
            // Name, Title, Profile Picture
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: UiConstants.generalTextColor,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120.0,
                  child: Image.asset(
                    Shovon.pp,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            // Contacts Box
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: UiConstants.generalVerticalContentPadding,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: UiConstants.generalHorizontalContentPadding,
                vertical: UiConstants.generalVerticalContentPadding / 1.5,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: UiConstants.generalBorderColor,
                  width: UiConstants.generalBorderWidth,
                ),
                borderRadius: BorderRadius.circular(
                  UiConstants.generalBorderRadius,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResumeContactsItem(
                    text: '/ ${ShovonSocial.linkedinUser}',
                    icon: FontAwesomeIcons.linkedin,
                  ),
                  ResumeContactsItem(
                    text: '/ ${ShovonSocial.githubUser}',
                    icon: FontAwesomeIcons.github,
                  ),
                  ResumeContactsItem(
                    text: '/ ${ShovonSocial.stackoverflowUser}',
                    icon: FontAwesomeIcons.stackOverflow,
                  ),
                ],
              ),
            ),
            // Description
            Text(
              Shovon.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
            // Experience Bar
            const ResumeSectionHeader(text: 'Experience'),
            // Experience List
            ListView.builder(
              shrinkWrap: true,
              itemCount: Shovon.experiences.length,
              itemBuilder: (context, index) {
                final selectedExp = Shovon.experiences[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: UiConstants.generalVerticalContentPadding / 1.25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            selectedExp.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            selectedExp.isCurrent
                                ? '${selectedExp.startMonth}, ${selectedExp.startYear} - Present'
                                : '${selectedExp.startMonth}, ${selectedExp.startYear} - ${selectedExp.endMonth}, ${selectedExp.endYear}',
                          ),
                        ],
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
                          height:
                              UiConstants.generalVerticalContentPadding / 3.0,
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
            ),
            // Key Competencies
            const ResumeSectionHeader(text: 'Key Competencies'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                Shovon.keyCompetencies.length,
                (index) => UnorderedListItem(
                  text: Shovon.keyCompetencies[index],
                ),
              ),
            ),
            // Education
            const ResumeSectionHeader(text: 'Education'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Shovon.educations.length,
              itemBuilder: (context, index) {
                final selectedEdu = Shovon.educations[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: UiConstants.generalVerticalContentPadding / 1.25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            selectedEdu.institution,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(selectedEdu.endingYear.toString()),
                        ],
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
                        itemCount: selectedEdu.specialAchievements.length,
                        separatorBuilder: (context, index) => const SizedBox(
                          height:
                              UiConstants.generalVerticalContentPadding / 3.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
