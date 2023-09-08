import 'package:flutter/material.dart';
import 'Components/ThemeData.dart';
import 'Pages/detail_page/details_paga.dart';
import 'Pages/home/home_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: buildAppBarTheme(),
        inputDecorationTheme: buildInputDecorationTheme(),
        iconTheme: buildIconThemeData(),
        useMaterial3: false,
      ),
      home: const DetailPage(),

    );
  }
}
