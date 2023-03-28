import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/halaman.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 440,
            decoration: BoxDecoration(
              color: Color(0xff0400C7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 300,
                      height: 440,
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text('USERNAME',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ))),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text('PASSWORD',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ))),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Text(
                              'Forget Password?',
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const halaman()),
                              );
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff0400C7),
                                    borderRadius: BorderRadius.circular(17)),
                                child: Text('LOGIN',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w500,
                                    ))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.all(10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0400C7),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Text('Facebook',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w500,
                                      ))),
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0400C7),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Text('google',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have account?',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Sign UP',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff0400C7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
