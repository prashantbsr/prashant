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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'UI/UX',
            style: GoogleFonts.archivoBlack().copyWith(
              fontSize: theme.displayLarge!.fontSize!+20,
              fontWeight: FontWeight.normal,
              color: theme.displayLarge!.color!.withOpacity(0.4),
            ),
          ),
          
        ],
      ),
    );
  }
}
