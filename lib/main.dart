import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BusinessCard(),
    ),
  );
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.teal, Colors.blue],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    // Image
                    Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text('Lathrell Pagsuguiron',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(height: 5),
                    Text(
                      'Social Media Analyst',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 242, 243),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.email, color: Colors.black),
                              const SizedBox(width: 10),
                              Text(
                                'Email: qltpagsuguiron@tip.edu.ph',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.phone, color: Colors.black),
                              const SizedBox(width: 10),
                              Text(
                                'Phone: 0976 322 3264',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.facebook, color: Colors.black),
                              const SizedBox(width: 10),
                              Text(
                                'Facebook: Lath',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.camera_alt_outlined,
                                  color: Colors.black),
                              const SizedBox(width: 10),
                              Text(
                                'Instagram: @notlath',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
