import 'package:flutter/material.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeContactsItem extends StatelessWidget {
  const ResumeContactsItem({
    super.key,
    required this.icon,
    required this.text,
    this.url,
  });

  final IconData icon;
  final String text;
  final String? url;

  Future<void> _launchUrl(String? url) async {
    if (url != null) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchUrl(url),
      child: Row(
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
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
