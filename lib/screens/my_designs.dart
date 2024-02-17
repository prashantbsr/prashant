import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prashant/widgets/design_list.dart';

class PsScMyDesigns extends StatefulWidget {
  const PsScMyDesigns({super.key});

  @override
  State<PsScMyDesigns> createState() => _PsScMyDesignsState();
}

class _PsScMyDesignsState extends State<PsScMyDesigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 111, 91, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Philosophy',
              style: GoogleFonts.roboto(
                color: const Color.fromRGBO(71, 157, 143, 1),
                fontSize: 22,
              ),
            ),
            Text(
              'Simplicity is the Ultimate Sophistication',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 52,
            ),
            const PsWiDesignList(),
          ],
        ),
      ),
    );
  }
}
