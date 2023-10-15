import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.header, required this.body});

  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: 26,
            color: theme.hintColor.withOpacity(1),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          body,
          style: TextStyle(
            fontSize: 14,
            color: theme.hintColor.withOpacity(0.6),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
