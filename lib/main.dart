import 'package:flutter/material.dart';
import 'package:online_shop/core/ui/theme/theme.dart';
import 'package:online_shop/features/otp_confirm_page/view/otp_confirm_page.dart';

void main() {
  runApp(const OnlineShop());
}

class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineShop',
      theme: themeData,
      home: const OTPConfirmPage(),
    );
  }
}
