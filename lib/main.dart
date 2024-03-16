import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'page/home/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Enable device preview
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add this line
      builder: DevicePreview.appBuilder, // Add this line
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
        ),
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}
