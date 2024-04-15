import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PsScHome extends StatefulWidget {
  const PsScHome({super.key});

  @override
  State<PsScHome> createState() => _PsScHomeState();
}

class _PsScHomeState extends State<PsScHome> {
  bool _isVisible = false;
  bool _isBgVisible = false;
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
  void initState() {
    super.initState();
    // Set _isVisible to true after a delay (for example, 2 seconds)
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isBgVisible = true;
      });
    });
  }

  

  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.poppins();
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBody: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              AnimatedOpacity(
                opacity: _isBgVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                child: Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      gradient: const SweepGradient(
                        center: Alignment.center,
                        startAngle: 2.35,
                        colors: [
                          Color.fromRGBO(199, 96, 0, 0.5),
                          Color.fromRGBO(7, 29, 228, 0.5),
                        ],
                        stops: [0.1, 0.8],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 80.0, sigmaY: 110.0),
                      child: Container(
                        height: 1,
                        //  color: Colors.black.withOpacity(0), // Transparent color
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      opacity: _isVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      child: Text(
                        'Hello, I am',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: theme.titleLarge!.fontSize,
                          color: theme.bodyMedium!.color!.withOpacity(0.6),
                        ),
                      ),
                    ),
                    Text(
                      'Dr. Prashant Sharma',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: GoogleFonts.poppins().fontFamily,
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
            ],
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
                      onTap: null,
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
