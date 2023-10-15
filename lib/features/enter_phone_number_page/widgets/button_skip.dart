import 'package:flutter/material.dart';

class ButtonSkip extends StatelessWidget {
  const ButtonSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Пропустить",
            style: TextStyle(
              color: theme.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
