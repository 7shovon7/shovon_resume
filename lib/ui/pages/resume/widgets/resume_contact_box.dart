import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/resume_contacts_item.dart';

class ResumeContactBox extends StatelessWidget {
  const ResumeContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
