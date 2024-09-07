import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:appdonationsgestor/pages/home_page.dart';
import 'package:appdonationsgestor/pages/institution_page.dart';
import 'package:appdonationsgestor/pages/institution_profile_page.dart';
import 'package:appdonationsgestor/pages/institution_register_page.dart';
import 'package:appdonationsgestor/pages/manager_profile_page.dart';
import 'package:appdonationsgestor/pages/settings_page.dart';
import 'package:appdonationsgestor/resources/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavIndex = 0;

  //lista das paginas
  List<Widget> pages = const [
    HomePage(),
    InstitutionRegisterPage(),
    ManagerProfilePage(),
    SettingsPage(),
  ];

  //lista de icones das paginas
  List<IconData> iconList = [
    Icons.home,
    Icons.add,
    Icons.person,
    Icons.settings,
  ];

  //Lista de titulos
  List<String> titleList = [
    'Olá, Name',
    'Cadastro',
    'Perfil',
    'Configurações',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: const InstitutionPage(),
              type: PageTransitionType.bottomToTop,
            ),
          );
        },
        child: Icon(Icons.list),
        backgroundColor: ConstantsColors.CorPrinciapal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: ConstantsColors.CorPrinciapal,
        activeColor: ConstantsColors.CorPrinciapal,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}