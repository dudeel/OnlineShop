import 'package:flutter/material.dart';

class ButtonGetCode extends StatelessWidget {
  const ButtonGetCode({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 143, 107, 242),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 10),
              blurRadius: 10,
              color: Color.fromARGB(60, 143, 107, 242),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Получить код',
              style: TextStyle(
                fontSize: 18,
                color: theme.canvasColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
