import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceScreen extends StatelessWidget {
  const PriceScreen({super.key});

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
                    'СТОИМОСТЬ РАЗРАБОТКИ ЛЕКАЛ'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ListView.builder(
                    padding: const EdgeInsets.only(bottom: 15),
                    itemCount: 16,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color(0xffD8D6FC),
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
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  index == 0
                                      ? 'Платья Базовые/Легкие'
                                      : index == 1
                                          ? 'Платья Вечерние Длинные'
                                          : index == 2
                                              ? 'Топ/Футболка'
                                              : index == 3
                                                  ? 'Боди/Топ'
                                                  : index == 4
                                                      ? 'Блузки'
                                                      : index == 5
                                                          ? 'Пижамы'
                                                          : index == 6
                                                              ? 'Брюки Классические Жен'
                                                              : index == 7
                                                                  ? 'Свитшот/Худи'
                                                                  : index == 8
                                                                      ? 'Пиджак/На Подкладке'
                                                                      : index ==
                                                                              9
                                                                          ? 'Брюки Спортивные'
                                                                          : index == 10
                                                                              ? 'Пальто/Тренчи На Подкладке'
                                                                              : index == 11
                                                                                  ? 'Бомбер'
                                                                                  : index == 12
                                                                                      ? 'Двойки'
                                                                                      : index == 13
                                                                                          ? 'Комбинезоны'
                                                                                          : index == 14
                                                                                              ? 'Юбка/Шорты'
                                                                                              : index == 15
                                                                                                  ? 'Корсет Топ'
                                                                                                  : '',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: const Color(0xff1E1B4B),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      'Базовый Размер От  ',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: const Color(0xff1E1B4B),
                                      ),
                                    ),
                                    Text(
                                      index == 0
                                          ? '1350-1650с'
                                          : index == 1
                                              ? '1680-4100с'
                                              : index == 2
                                                  ? '950-1500с'
                                                  : index == 3
                                                      ? '1150-1750с'
                                                      : index == 4
                                                          ? '1150-1850с'
                                                          : index == 5
                                                              ? '1350-1800с'
                                                              : index == 6
                                                                  ? '1150-1600с'
                                                                  : index == 7
                                                                      ? '1150-1800с'
                                                                      : index ==
                                                                              8
                                                                          ? '2100-4000с'
                                                                          : index == 9
                                                                              ? '1000-1500с'
                                                                              : index == 10
                                                                                  ? '2350-3200с'
                                                                                  : index == 11
                                                                                      ? '1550-2650с'
                                                                                      : index == 12
                                                                                          ? '2150-2650с'
                                                                                          : index == 13
                                                                                              ? '2100-2650с'
                                                                                              : index == 14
                                                                                                  ? '800-1500с'
                                                                                                  : index == 15
                                                                                                      ? '1200-2850с'
                                                                                                      : '',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: const Color(0xff3730A3),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Градация От  ',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: const Color(0xff1E1B4B),
                                      ),
                                    ),
                                    Text(
                                      index == 0
                                          ? '800с'
                                          : index == 1
                                              ? '900с'
                                              : index == 2
                                                  ? '600с'
                                                  : index == 3
                                                      ? '700с'
                                                      : index == 4
                                                          ? '600с'
                                                          : index == 5
                                                              ? '800с'
                                                              : index == 6
                                                                  ? '700с'
                                                                  : index == 7
                                                                      ? '700с'
                                                                      : index ==
                                                                              8
                                                                          ? '1200с'
                                                                          : index == 9
                                                                              ? '600с'
                                                                              : index == 10
                                                                                  ? '1300с'
                                                                                  : index == 11
                                                                                      ? '700с'
                                                                                      : index == 12
                                                                                          ? '1100с'
                                                                                          : index == 13
                                                                                              ? '1000с'
                                                                                              : index == 14
                                                                                                  ? '500с'
                                                                                                  : index == 15
                                                                                                      ? '700с'
                                                                                                      : '',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: const Color(0xff3730A3),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ss11.png',
                        width: 13,
                        height: 14,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Первая 3D визуализация в подарок!',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                    ],
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
