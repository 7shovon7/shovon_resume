import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/common_widgets/unordered_list_item.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/educations.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/experiences.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/resume_contact_box.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/resume_header_section.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/section_header.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = context.width;
    double maxWidth = 860;
    double breakingWidth = 700;
    // bool shouldBreak = deviceWidth < breakingWidth;

    double contentWidth = deviceWidth > maxWidth ? maxWidth : deviceWidth;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: UiConstants.horizontalPagePadding,
                vertical: UiConstants.verticalPagePadding,
              ),
              child: SizedBox(
                width: contentWidth,
                child: Column(
                  children: [
                    // Name, Title, Profile Picture
                    ResumeHeaderSection(
                      width: contentWidth,
                      breakingWidth: breakingWidth,
                    ),
                    // Contacts Box
                    const ResumeContactBox(),
                    // Description
                    Text(
                      Shovon.description,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ),
                    // Experience Bar
                    const ResumeSectionHeader(text: 'Experiences'),
                    // Experience List
                    ResumeExperiences(
                      width: contentWidth,
                      breakingWidth: breakingWidth,
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
                    ResumeEducations(
                      width: contentWidth,
                      breakingWidth: breakingWidth,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
