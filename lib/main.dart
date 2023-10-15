import 'package:flutter/material.dart';
import 'package:online_shop/core/ui/theme/theme.dart';
import 'package:online_shop/features/enter_phone_number_page/enter_phone_number_page.dart';

void main() {
  runApp(const OnlineShop());
}

class OnlineShop extends StatefulWidget {
  const OnlineShop({super.key});

  @override
  State<OnlineShop> createState() => _OnlineShopState();
}

class _OnlineShopState extends State<OnlineShop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineShop',
      theme: themeData,
      home: const EnterPhoneNumberPage(),
    );
  }
}
