import 'package:flutter/material.dart';
import 'package:levelup/features/leaderboard/presentation/pages/leaderboard_page.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Level Up Amoeba',
      home: LeaderboardPage(),
    );
  }
}
