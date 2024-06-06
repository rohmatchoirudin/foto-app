import 'package:foto_app/views/account.dart';
import 'package:foto_app/views/addcategory.dart';
import 'package:foto_app/views/addproject.dart';
import 'package:foto_app/views/category.dart';
import 'package:foto_app/views/dashboard.dart';
import 'package:foto_app/views/document.dart';
import 'package:foto_app/views/adddocument.dart';
import 'package:foto_app/views/editdocument.dart';
import 'package:foto_app/views/editproject.dart';
import 'package:foto_app/views/home.dart';
import 'package:foto_app/views/login.dart';
import 'package:foto_app/views/project.dart';
import 'package:foto_app/views/register.dart';
import 'package:foto_app/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:foto_app/styles/colors.dart' as colors;

class AppRouter extends InheritedWidget {
  final Color color;

  const AppRouter({
    super.key,
    required this.color,
    required super.child,
  });

  @override
  bool updateShouldNotify(AppRouter oldWidget) {
    return color != Colors.lightGreen;
  }

  static AppRouter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppRouter>();
  }
}

class RouterApp extends StatefulWidget {
  const RouterApp({super.key});

  @override
  RouterState createState() => RouterState();
}

class RouterState extends State<RouterApp> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppRouter(
        color: colors.primary,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const Splash(),
            theme: ThemeData(
              brightness: Brightness.light,
              tabBarTheme: const TabBarTheme(
                  labelColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.white), // color for text
                  indicator: UnderlineTabIndicator(
                      // color for indicator (underline)
                      borderSide: BorderSide(color: Colors.white))),
              primaryColor: colors.primary,
            ),
            routes: {
              '/splash': (context) => const Splash(),
              '/login': (context) => const Login(),
              '/register': (context) => const Register(),
              '/home': (context) => const Home(),
              '/dashboard': (context) => const Dashboard(),
              '/document': (context) => const Document(),
              '/add_document': (context) => const AddDocument(),
              '/edit_document': (context) => const EditDocument(),
              '/project': (context) => const Project(),
              '/add_project': (context) => const AddProject(),
              '/edit_project': (context) => const EditProject(),
              '/account': (context) => const Account(),
              '/category': (context) => const Category(),
              '/add_category': (context) => const AddCategory(),
            }));
  }
}
