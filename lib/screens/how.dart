import 'package:flutter/material.dart';

class PsScHow extends StatefulWidget {
  const PsScHow({super.key});

  @override
  State<PsScHow> createState() => _PsScHowState();
}

class _PsScHowState extends State<PsScHow> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      backgroundColor: Colors.blueAccent,
    );
  }
}