import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 125, horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'портфолио'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const RowCont(tt: 0, len: 3),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '(Смахните влево или вправо)',
                          style: GoogleFonts.crimsonPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color(0xff8784D4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SvgPicture.asset(
                          'assets/ssss.svg',
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const RowCont(tt: 1, len: 4),
                  const SizedBox(height: 20),
                  const RowCont(tt: 2, len: 5),
                  const SizedBox(height: 20),
                  const RowCont(tt: 3, len: 3),
                  const SizedBox(height: 20),
                  const RowCont(tt: 4, len: 7),
                  const SizedBox(height: 20),
                  const RowCont(tt: 5, len: 4),
                  const SizedBox(height: 20),
                  const RowCont(tt: 6, len: 5),
                  const SizedBox(height: 20),
                  const RowCont(tt: 7, len: 6),
                  const SizedBox(height: 20),
                  const RowCont(tt: 8, len: 5),
                  const SizedBox(height: 20),
                  const RowCont(tt: 9, len: 4),
                  const SizedBox(height: 20),
                  const RowCont(tt: 10, len: 2),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 207,
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(1, (index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: index != 6 ? 20 : 0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/s11-$index.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      width: 1,
                                      color: const Color(0xff8784D4),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 494,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const RowCont(tt: 12, len: 9),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 207,
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(9, (index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: index != 6 ? 20 : 0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/s13-$index.png'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      width: 1,
                                      color: const Color(0xff8784D4),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 494,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const RowCont(tt: 14, len: 4),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset(
                'assets/back.png',
                width: 35,
                height: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowCont extends StatelessWidget {
  const RowCont({super.key, required this.tt, required this.len});
  final int tt;
  final int len;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: 207,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(len, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index != 6 ? 20 : 0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/s$tt-$index.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xff8784D4),
                      ),
                    ),
                    child: const SizedBox(
                      width: 166,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
