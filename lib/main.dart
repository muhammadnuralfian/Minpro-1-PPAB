import 'package:flutter/material.dart';
import 'pages/schedule_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manajemen Jadwal Service',
      theme: ThemeData(useMaterial3: true),
      home: const ScheduleListPage(),
    );
  }
}