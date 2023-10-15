import 'package:flutter/material.dart';
import 'package:online_shop/core/ui/widgets/widgets.dart';
import 'package:online_shop/features/enter_phone_number_page/widgets/widgets.dart';

class EnterPhoneNumberPage extends StatelessWidget {
  const EnterPhoneNumberPage({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
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
                  ),
                  const SizedBox(height: 50),
                  const InfoText(
                    header: 'Вход',
                    body:
                        'Укажите номер телефона, и мы отправим на него SMS-сообщение с кодом',
                  ),
                  const SizedBox(height: 20),
                  const PhoneNumberLine(),
                  const SizedBox(height: 20),
                  const ButtonGetCode(),
                ],
              ),
              const TextPersonalData(),
            ],
          ),
        ),
      ),
    );
  }
}
