import 'package:flutter/material.dart';
import 'package:online_shop/core/ui/widgets/widgets.dart';
import 'package:online_shop/features/otp_confirm_page/widgets/widgets.dart';

class OTPConfirmPage extends StatelessWidget {
  const OTPConfirmPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

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
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PinCard(index: 0),
                  PinCard(index: 1),
                  PinCard(index: 2),
                  PinCard(index: 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
