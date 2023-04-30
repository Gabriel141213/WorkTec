//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worktec_tcc/src/pages/home_page.dart';
import 'package:worktec_tcc/src/config/models/lista_projetos.dart';
//import 'package:worktec_tcc/init_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ListProjects(),
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worktec',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(255, 231, 230, 230).withAlpha(100),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
