import 'package:flutter/material.dart';
import 'package:shovon_resume/ui/constants/constants.dart';

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem({
    super.key,
    required this.text,
    this.textStyle,
  });

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.circle,
            size: 7,
            color: UiConstants.darkBrown,
          ),
        ),
        Flexible(
          child: Text(
            text,
            softWrap: true,
            textAlign: TextAlign.justify,
            style: textStyle ?? Theme.of(context).textTheme.bodyLarge!,
          ),
        ),
      ],
    );
  }
}
