import 'package:flutter/material.dart';
import 'package:online_shop/features/enter_phone_number_page/widgets/widgets.dart';

class EnterPhoneNumberPage extends StatefulWidget {
  const EnterPhoneNumberPage({super.key});

  @override
  State<EnterPhoneNumberPage> createState() => _EnterPhoneNumberPageState();
}

class _EnterPhoneNumberPageState extends State<EnterPhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(
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
                  ButtonSkip(),
                  SizedBox(height: 50),
                  InfoEnteringText(),
                  SizedBox(height: 20),
                  PhoneNumberLine(),
                  SizedBox(height: 20),
                  ButtonGetCode(),
                ],
              ),
              TextPersonalData(),
            ],
          ),
        ),
      ),
    );
  }
}
