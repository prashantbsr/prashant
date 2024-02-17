import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PsScHome extends StatefulWidget {
  const PsScHome({super.key});

  @override
  State<PsScHome> createState() => _PsScHomeState();
}

class _PsScHomeState extends State<PsScHome> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.roboto();
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, my name is',
              style: GoogleFonts.spaceMono(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'डॉ. प्रशांत शर्मा',
              style: GoogleFonts.yatraOne().copyWith(
                fontWeight: FontWeight.w400,
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
              ),
            ),
            Text(
              'MBBS, App Developer',
              style: style.copyWith(
                fontSize: theme.titleLarge!.fontSize,
                color: theme.bodyMedium!.color!.withOpacity(0.6),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
