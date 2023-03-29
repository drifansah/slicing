// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/halaman.dart';
import 'package:pert3slice/pages/artikel.dart';
import 'package:pert3slice/pages/main_menu.dart';

class Getstartedpage extends StatelessWidget {
  const Getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img-get-started-1.png"))),
        ),
        Container(
          height: 440,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.0)
            ],
          )),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Treat",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Patient",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff308cf8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Like A",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Queen",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff308cf8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Explore the best our services with\nprofesional specialist doctor',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xffFFFFFF),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainmenuPage ()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 14),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(17)),
                    child: Text('Get started',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
