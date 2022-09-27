import 'package:flutter/material.dart';
import 'package:super_app/constant/color.dart';
import 'package:super_app/screens/login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperApp',
     theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodyText2:
              const TextStyle(fontSize: 16, color: colorBlackTypoTextBody),
        ),
        primaryColor: colorPrimary1,
        fontFamily: 'Averta',
      ),
      // onGenerateRoute: _appRouter.onGenerateRoute,
      home: const LoginPage(),
      
    );
  }
}



 