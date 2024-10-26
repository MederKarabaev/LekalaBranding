import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lekala_branding/portfolio_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                    'О НАс'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '''Сотрудничаем с брендами одежды/производителями/с швейными фабриками/селларами/ так же с креативными дизайнерами.
Принимаем выкройки как для коллекций так и индивидуальные заявки. 
Сопровождаем и поддерживаем по технической документации изделия, консультируем по техническим вопросам.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/o1.png',
                      height: 37,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Лучшая команда''',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Команда из дипломированных специалистов  с богатой практикой, имеющие квалификацию на международных организациях стран СНГ и Европпы.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/o2.png',
                      height: 28.65,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Правильная посадка''',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Работаем с проверенными базой данных в условиях лаборатории.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/o3.png',
                      height: 25,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Гарантия''',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Мы гарантируем свою работу и в случае несоответствия Вашего заказа полученному результату, мы сделаем поправки без дополнительной оплаты.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/o4.png',
                      height: 29,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Работа в САПР GRAFIS''',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '''Позволяет не только ускорять процесс осуществления работ, но и соблюсти тех.регламенты, ГОСТы или ТУ.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'портфолио'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const RowCont(tt: 4, len: 7),
                  const SizedBox(height: 25),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PortfolioScreen()));
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
                              'больше примеров',
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
                  const SizedBox(height: 50),
                  Text(
                    'Этапы работ при заказе лекал'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const ACont(
                    title: 'ШАГ 1. Отправляете эскиз или фото',
                    img: 5,
                    description:
                        '''Присылаете нам эскиз или картинку с техническим описанием заказываемого Вами изделия. Обсуждаем детали, с учетом Ваших пожеланий.''',
                  ),
                  const SizedBox(height: 25),
                  const ACont(
                    title: 'ШАГ 2. Оформляем заказ',
                    img: 6,
                    description:
                        '''Рассчитываем стоимость заказа и оформляем заказ на разработку лекал. Производите оплату за заказ.''',
                  ),
                  const SizedBox(height: 25),
                  const ACont(
                    title: 'ШАГ 3. Распечатываем на плоттере базовый размер',
                    img: 7,
                    description:
                        '''В оговоренные сроки разрабатываем базовый (основной) размер изделия после чего, распечатываем и отдаем Вам на руки или отправляем крьерской службой лекала для пошива образца. В случае необходимости отправляем в электронных форматах DXF, PLT, PDF и др.''',
                  ),
                  const SizedBox(height: 25),
                  const ACont(
                    title: 'ШАГ 4. Утверждаем проект и делаем градацию модели',
                    img: 8,
                    description:
                        '''После утверждения опытного образца, если есть необходимость, вносим изменения в конструкцию, после чего осуществляем градацию на необходимое количество размеров. Отправляем на печать градацию и отдаем Вам готовые работы.''',
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'УТОЧНИТЕ данные ПУНКТЫ для качественной обработки Вашего заказа',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Image.asset(
                      'assets/o9.png',
                      width: 176,
                      height: 140,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  1. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Технический рисунок эскиз',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''Технический рисунок содержит детали, необходимые в дальнейшем при конструировании изделия. Мы рекомендуем на стадии формирования заявки составить и согласовать технический рисунок изделия.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  2. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Наименование ткани',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''Имея информацию о наименовании ткани, конструктор при построении конструкции модели, учитывает свойства и задает соответствующие данной ткани параметры.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  3. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Информация о базовом или основном размере лекала',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''Первый опытный образец изделия отшивается на основе базового размера, разработанного конструктором. Отшивать базовый образец лучше на том производстве, где будет отшиваться вся партия изделий, так как используемое оборудование и ткань, из которой будет отшиваться изделие, вносит определенные коррективы в изделие.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  4. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Информация о наличии или отсутствии подкладки',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''При заказе прилегающих и полуприлегающих изделий данная информация является крайне важной т.к. подклад имеет свою плотность и должен быть учтен на начальной стадии разработки конструкции базового (основного) размера лекал''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  5. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Информация о градации',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''После утверждения образца модели мы делаем градацию по заказанным размерам, после чего рекомендуем до кроя всех размеров отшивать крайний размер от базовой конструкции. Это необходимо для контрольной проверки всего размерного ряда.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  6. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Контролируйте масштаб на лекалах',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''После распечатки лекал рекомендуем проверить тестовый квадрат на лекалах по линейке. Квадрат должен соответствовать указанным в нём размеру.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '  7. ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff1E1B4B),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Информация о формате и ширине печати',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff1E1B4B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''Зачастую лекала отправляются в электронном формате поэтому заказчик может заранее узнать необходимый формат pdf, plo, plt и др. форматы, поддерживаемый плоттером или принтером, в том месте, где планируется распечатка лекал. Обычно на производтсве либо типографии.''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'ДОПОЛНИТЕЛЬНЫЕ УСЛУГИ'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xff3730A3),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const DCont(
                    img: 10,
                    title: 'Разработка лекал и градация по размерам',
                    description:
                        '''Разработка базового размера, а также градация модели осуществляется с помощью системы автоматизированного проектирования (САПР)''',
                  ),
                  const SizedBox(height: 25),
                  const DCont(
                      img: 11,
                      title: 'Разработка дизайна костюма и технического эскиза',
                      description:
                          '''По заданным параметрам заказчика мы разрабатываем дизайн и технический эскиз планируемого изделия'''),
                  const SizedBox(height: 25),
                  const DCont(
                      img: 12,
                      title: 'Разработка технической документации',
                      description:
                          '''Техническая документация необходима для корректной работы всех участников при производстве, а также при прохождении процедуры сертификации и декларирования'''),
                  const SizedBox(height: 50),
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

class DCont extends StatelessWidget {
  const DCont({
    super.key,
    required this.img,
    required this.title,
    required this.description,
  });
  final int img;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/o$img.png'),
            const SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff1E1B4B),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              description,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xff1E1B4B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ACont extends StatelessWidget {
  const ACont(
      {super.key,
      required this.title,
      required this.img,
      required this.description});
  final String title;
  final int img;
  final String description;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff1E1B4B),
              ),
            ),
            const SizedBox(height: 15),
            Image.asset(
              'assets/o$img.png',
              height: 50,
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(height: 15),
            Text(
              description,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xff1E1B4B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
