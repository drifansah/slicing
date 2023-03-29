import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class halaman extends StatelessWidget {
  const halaman({super.key});

  @override
  Widget build(BuildContext context) {
    Widget halamanutama(String img, String name, String role) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        img,
                      ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xff002841),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff002841),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic_star 2.png",
                                ))),
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff308cf8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,\nAdiksa Muhammad fajar',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xff002841),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Beberapa contoh pantai di Indonesia',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff9698A9),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              halamanutama("assets/pantai1.png", "Pantai Jernih", "Indah"),
              halamanutama("assets/pantai2.png", "Pantai Tercemar", "Kotor")
            ],
          ),
        ),
      )),
    );
  }
}
