import 'package:flutter/material.dart';

class InfoEnteringText extends StatelessWidget {
  const InfoEnteringText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Вход',
          style: TextStyle(
            fontSize: 26,
            color: theme.hintColor.withOpacity(1),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Укажите номер телефона, и мы отправим на него SMS-сообщение с кодом',
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
