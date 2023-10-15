import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineShop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 143, 107, 242)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                        child: const Text("Пропустить"),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Вход',
                        style: TextStyle(
                          fontSize: 24,
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
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: theme.hintColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '(900) 000 00 - 00',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: theme.hintColor.withOpacity(0.4),
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
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
                  ),
                ],
              ),
              Text(
                'Нажимая кнопку “Получить код”, вы соглашаетесь с Политикой конфиденциальности и\nПользовательским соглашением',
                style: TextStyle(
                  fontSize: 12,
                  color: theme.hintColor.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
