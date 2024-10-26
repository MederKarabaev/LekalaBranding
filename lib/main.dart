import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lekala_branding/about_screen.dart';
import 'package:lekala_branding/contacts_screen.dart';
import 'package:lekala_branding/portfolio_screen.dart';
import 'package:lekala_branding/price_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 29, right: 29),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/icon-i.png',
                    width: 126,
                    height: 48,
                    alignment: Alignment.centerLeft,
                  ),
                  const SizedBox(height: 100),
                  Image.asset('assets/h-2.png'),
                  const SizedBox(height: 60),
                  Text(
                    'Оставьте заявку и получите\nконсультацию у профессионалов',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PriceScreen()));
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xff8784D4),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 8,
                              spreadRadius: 0,
                              color: Color(0xff8784D4),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 45,
                          width: 215,
                          child: Center(
                            child: Text(
                              'Рассчитать стоимость',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 29, right: 29),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutScreen()));
                    },
                    child: Image.asset(
                      'assets/s1.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PortfolioScreen()));
                    },
                    child: Image.asset(
                      'assets/union.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PriceScreen()));
                    },
                    child: Image.asset(
                      'assets/s3.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactsScreen()));
                    },
                    child: Image.asset(
                      'assets/s4.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
