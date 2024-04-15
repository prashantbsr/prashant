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
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Prashant Sharma',
          style: GoogleFonts.cinzel(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                'Hi! This is my personal blog. I write about topics of my interest. Articles added here are solely my personal opinions. I always love to hear from everyone who visit my blog.',
                style: GoogleFonts.cormorantGaramond().copyWith(
                  fontSize: textTheme.bodyLarge!.fontSize,
                  fontWeight: FontWeight.normal,
                  color: textTheme.displaySmall!.color,
                ),
              ),
              const SizedBox(
                height: 50,
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, i) {
                  return ListTile(
                    minVerticalPadding: 18,
                    title: Text(
                      'Galacticism: the ultimate civilisational goal to colonise every galaxy in universe.',
                      style: GoogleFonts.lora()
                          .copyWith(fontSize: textTheme.titleLarge!.fontSize),
                    ),
                    subtitle: Text(
                      'This is the subtitle,',
                      style: GoogleFonts.roboto().copyWith(
                        color: textTheme.bodyLarge!.color!.withOpacity(0.7),
                        fontSize: textTheme.bodyLarge!.fontSize
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
