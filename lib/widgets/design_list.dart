import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PsWiDesignList extends StatefulWidget {
  const PsWiDesignList({super.key});

  @override
  State<PsWiDesignList> createState() => _PsWiDesignListState();
}

class _PsWiDesignListState extends State<PsWiDesignList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white.withOpacity(0.09),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '01',
              style: GoogleFonts.roboto(
                color: const Color.fromRGBO(71, 157, 143, 1),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Glassmorphism',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'A design trend that imitates the look of frosted glass.',
              style: GoogleFonts.roboto(
                color: const Color.fromRGBO(0,66,57,1),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
        ],
      ),
    );
  }
}