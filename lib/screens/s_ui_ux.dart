import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrScUiUx extends StatefulWidget {
  const PrScUiUx({super.key});

  @override
  State<PrScUiUx> createState() => _PrScUiUxState();
}

class _PrScUiUxState extends State<PrScUiUx> {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'UI/UXa',
            style: GoogleFonts.poppins().copyWith(
              fontSize: theme.displayLarge!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),

          
        ],
      ),
    );
  }
}
