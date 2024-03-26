import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/utils.dart';
import 'package:shovon_resume/core/constants/shovon.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:shovon_resume/ui/pages/resume/widgets/resume_contacts_item.dart';

class ResumeContactBox extends StatelessWidget {
  const ResumeContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = context.width;
    const double breakingWidth = 530;
    final bool shouldBreak = deviceWidth > breakingWidth;

    const List<ResumeContactsItem> socialItems = [
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
    ];
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
      child: shouldBreak
          ? const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: socialItems,
            )
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: socialItems,
            ),
    );
  }
}
