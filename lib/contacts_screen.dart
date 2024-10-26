// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  // Функция для открытия WhatsApp
  void _launchWhatsApp() async {
    const whatsappUrl = 'https://wa.me/996709151881';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Не удалось открыть WhatsApp';
    }
  }

  // Функция для открытия Instagram
  void _launchInstagram() async {
    const instagramUrl =
        'https://www.instagram.com/_lekala_branding_?igsh=cTl5MThtNXN3NW9w&utm_source=qr';
    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      throw 'Не удалось открыть Instagram';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 125),
                  Text(
                    'Свяжитесь с нами:'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff8784D4),
                        ),
                        color: const Color(0xffffffff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 7, right: 7, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Lekala Branding',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                                height: 1,
                                color: const Color(0xff1E1B4B),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'wa.me/996709151881',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 6,
                                height: 1.3,
                                color: const Color(0xff999999),
                              ),
                            ),
                            Text(
                              'Бизнес-аккаунт WhatsApp',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 6,
                                height: 1.3,
                                color: const Color(0xff999999),
                              ),
                            ),
                            Image.asset(
                              'assets/wa1.png',
                              width: 129,
                              height: 107,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Center(
                    child: GestureDetector(
                      onTap: _launchWhatsApp, // Переход в WhatsApp
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xff8784D4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          height: 41,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/tel.svg'),
                                // const SizedBox(width: 0),
                                Text(
                                  '+996709151881',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xffffffff),
                                    decorationThickness: 1,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff8784D4),
                        ),
                        color: const Color(0xffffffff),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/in1.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const SizedBox(
                        width: 143,
                        height: 152,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Center(
                    child: GestureDetector(
                      onTap: _launchInstagram, // Переход в Instagram
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xff8784D4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          height: 41,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/in.svg'),
                                const SizedBox(width: 8),
                                SizedBox(
                                  width: 110,
                                  child: Text(
                                    'Https://Www.instagram.com/_lekala_branding_?igsh=cTl5MThtNXN3NW9w&utm_source=qr',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color(0xffffffff),
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0xffffffff),
                                      decorationThickness: 1,
                                      decorationStyle: TextDecorationStyle.wavy,
                                      height: 1.5,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
