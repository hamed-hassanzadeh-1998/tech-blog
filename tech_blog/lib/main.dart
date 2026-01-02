import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_blog/my_colors.dart';
import 'splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Blog',
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('fa',''), // Persian 
    
  ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    
      home: const SplashScreen(),
    );
  }
}
