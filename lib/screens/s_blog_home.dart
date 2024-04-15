import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrScBlogHome extends StatefulWidget {
  const PrScBlogHome({super.key});

  @override
  State<PrScBlogHome> createState() => _PrScBlogHomeState();
}

class _PrScBlogHomeState extends State<PrScBlogHome> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Prashant Sharma',
          style: GoogleFonts.cinzel(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Hi! This is my personal blog. I write about topics of my interest. Articles added here are solely my personal opinions. I always love to hear from everyone who visit my blog.',
              style: GoogleFonts.sourceSerif4().copyWith(
                fontSize: textTheme.bodyLarge!.fontSize,
                fontWeight: FontWeight.normal,
                color: textTheme.displaySmall!.color,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'All Posts',
              style: GoogleFonts.poppins().copyWith(
                fontSize: textTheme.labelMedium!.fontSize,
                fontWeight: FontWeight.normal,
                color: textTheme.labelMedium!.color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
