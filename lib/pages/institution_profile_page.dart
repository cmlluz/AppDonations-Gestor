import 'package:appdonationsgestor/pages/popup_menu_state.dart';
import 'package:appdonationsgestor/resources/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:appdonationsgestor/components/gallery_state.dart';
import 'package:appdonationsgestor/components/item_card.dart';
import 'package:appdonationsgestor/components/profile_info_component.dart';
import 'package:page_transition/page_transition.dart';

class InstitutionProfilePage extends StatefulWidget {
  const InstitutionProfilePage({super.key});

  @override
  State<InstitutionProfilePage> createState() => InstitutionProfilePageState();
}

class InstitutionProfilePageState extends State<InstitutionProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Perfil da Instituição'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              ProfileInfoComponent(),
              const SizedBox(height: 20),
              const Text(
                "Detalhes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "Suas Necessidades",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8),
              ItemCardComponent(),
              const SizedBox(height: 20),
              const Text(
                "Visitas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Gallery(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                child: const PopupMenuState(),
                type: PageTransitionType.bottomToTop,
              ),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: ConstantsColors.CorPrinciapal,
        ),
      ),
    );
  }
}
