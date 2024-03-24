

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moneymanager/pages/widgets/homepage.dart';
import 'package:moneymanager/theme.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('money');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'money manager',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}
