import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foody_ui/ui/pages/home_page.dart';
import 'package:foody_ui/utils/constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: green,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foody App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
