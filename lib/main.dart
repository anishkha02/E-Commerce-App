import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme:const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black,
          )
        )
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
      home: AuthScreen(),
    );
  }
}
