import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinCard extends StatelessWidget {
  const PinCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 68,
      width: 64,
      child: Container(
        decoration: BoxDecoration(
          color: theme.hintColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          textAlign: TextAlign.center,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }
          },
          onSaved: (pin1) {},
          decoration: const InputDecoration(hintText: "-"),
          style: theme.textTheme.headlineLarge,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}
