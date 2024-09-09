import 'package:appdonationsgestor/components/gallery_state.dart';
import 'package:appdonationsgestor/components/item_card.dart';
import 'package:appdonationsgestor/components/profile_info_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.white,
        body: SizedBox.expand(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProfileInfoComponent(),
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Detalhes",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ali"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Suas Necessidades",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        ItemCardComponent(),
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Visitas",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 500,
                      child: Container(
                        child: Gallery(),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
