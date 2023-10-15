import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextPersonalData extends StatelessWidget {
  const TextPersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        text: 'Нажимая кнопку “Получить код”, вы соглашаетесь c ',
        style: TextStyle(
          fontSize: 14,
          color: theme.hintColor.withOpacity(0.6),
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: 'Политикой конфиденциальности ',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: theme.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
            text: 'и ',
            style: TextStyle(
              fontSize: 14,
              color: theme.hintColor.withOpacity(0.6),
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Пользовательским соглашением',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: theme.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
