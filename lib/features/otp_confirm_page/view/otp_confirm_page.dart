import 'package:flutter/material.dart';
import 'package:online_shop/core/ui/widgets/widgets.dart';

class OTPConfirmPage extends StatelessWidget {
  const OTPConfirmPage({super.key});

  final String phoneNumber = '+7 (900) 000-00-00';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 50,
            bottom: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Назад",
                      style: TextStyle(
                        color: theme.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              InfoText(
                header: 'Введите код',
                body: 'SMS-сообщение с кодом отправлено на номер $phoneNumber',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
