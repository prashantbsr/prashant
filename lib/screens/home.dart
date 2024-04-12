import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PsScHome extends StatefulWidget {
  const PsScHome({super.key});

  @override
  State<PsScHome> createState() => _PsScHomeState();
}

class _PsScHomeState extends State<PsScHome> {
  List servicesList = [
    {'title': 'UI/UX', 'sub': 'I build intuitive user-centric interfaces.'},
    {
      'title': 'App Development',
      'sub': 'I build and maintain Android & iOS apps.'
    },
    {'title': 'Websites', 'sub': 'Get yourself or your business a website.'},
    {'title': 'Brand Consultant', 'sub': 'I help with buiding your brand.'},
  ];
  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.poppins();
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBody: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello, I am',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: theme.titleLarge!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.6),
                  ),
                ),
                Text(
                  'Dr. Prashant Sharma',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'I develop apps.',
                  style: style.copyWith(
                    fontSize: theme.titleLarge!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),

          //dr. and developer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DR. & DEVELOPER',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'I am a MBBS doctor, and an app developer.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Although I am open to all opportunities, I prefer to work with medical professionals to transform their ideas into innovative digital solutions.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.75),
                  ),
                ),
              ],
            ),
          ),

          //heres how i help
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How can I help?',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize,
                    color: theme.bodyMedium!.color!.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: servicesList.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      minVerticalPadding: 16,
                      trailing: const Icon(Icons.arrow_forward_sharp),
                      title: Text(
                        servicesList[i]['title'],
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .fontSize,
                          color: theme.bodyMedium!.color!.withOpacity(0.85),
                        ),
                      ),
                      subtitle: Text(
                        servicesList[i]['sub'],
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          color: theme.bodyMedium!.color!.withOpacity(0.6),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
