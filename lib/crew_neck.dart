import 'package:basics_styles/search_products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrewNeck extends StatefulWidget {
  const CrewNeck({super.key});

  @override
  State<CrewNeck> createState() => _CrewNeckState();
}

class _CrewNeckState extends State<CrewNeck> {
  final List<String> images = [
    'assets/denim.png',
    'assets/denim.png',
    'assets/denim.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFEAEAEA),
        foregroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          "BASICS",
          style: GoogleFonts.nunitoSans(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: SizedBox(
                height: 14,
                width: 32,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SearchProducts()));
                  },
                  child: Image.asset(
                    "assets/Bag.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/neck_tshirt.png",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            images.length,
                            (index) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              width: 7,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Crew Neck T - shirt ",
                    style: GoogleFonts.nunitoSans(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "\$79.90",
                    style: GoogleFonts.nunitoSans(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Bag.png",
                        color: Colors.white,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "BUY NOW",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
