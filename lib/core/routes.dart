import 'package:appdonationsgestor/pages/institution_page.dart';
import 'package:appdonationsgestor/pages/institution_profile_page.dart';
import 'package:appdonationsgestor/pages/item_edit_page.dart';
import 'package:appdonationsgestor/pages/item_register_page.dart';
import 'package:appdonationsgestor/pages/login_page.dart';
import 'package:appdonationsgestor/pages/popup_menu_state.dart';
import 'package:appdonationsgestor/pages/post_page.dart';
import 'package:appdonationsgestor/resources/root_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteNames {
  static const String legal_entities_login = "legal_entities_login";
  static const String institution_page = "institution_page";
  static const String item_register_page = "item_register_page";
  static const String item_edit_page = "item_edit_page";
  static const String institution_profile_page = "institution_profile_page";
  static const String home_page = "home_page";
  static const String Login_page = "login_page";
  static const String bottom_bar_state = "bar_state";
  static const String post_page = "post_page";
  static const String root = "root";
  static const String popup_menu_state = "popup_menu_state";
}

class AppRountersConfiguration {
  static GoRouter returnRouter() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: RouteNames.Login_page,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginPage(),
            );
          },
        ),
        GoRoute(
          path: '/root',
          name: RouteNames.root,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: RootPage(),
            );
          },
        ),
        GoRoute(
          path: '/item_register_page',
          name: RouteNames.item_register_page,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: ItemRegisterPage(),
            );
          },
        ),
        GoRoute(
          path: '/institution_profile_page',
          name: RouteNames.institution_profile_page,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: InstitutionProfilePage(),
            );
          },
        ),
        GoRoute(
          path: '/intitution_page',
          name: RouteNames.institution_page,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: InstitutionPage(),
            );
          },
        ),
        GoRoute(
          path: '/item_edit_page',
          name: RouteNames.item_edit_page,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: ItemEditPage(),
            );
          },
        ),
        GoRoute(
          path: '/popup_menu_state',
          name: RouteNames.popup_menu_state,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: PopupMenuState(),
            );
          },
        ),
        GoRoute(
          path: '/post_page',
          name: RouteNames.post_page,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: PostPage(),
            );
          },
        ),
      ],
    );
  }
}
