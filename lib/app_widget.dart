import 'package:aprendendoflutter/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:aprendendoflutter/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        
        final brightness = AppController.instance.isDartTheme
          ? Brightness.dark
          : Brightness.light;
        
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
              brightness: brightness,
            ),
            appBarTheme: AppBarTheme(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red
            ),
          ),
          home: HomePage(),
        );
      },
    );
  }
}
