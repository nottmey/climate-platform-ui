import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  final List<Widget> slivers;

  const AppPage({super.key, required this.slivers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: slivers),
      ),
    );
  }
}
