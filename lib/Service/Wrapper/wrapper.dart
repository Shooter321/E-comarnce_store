import 'package:e_commerce_store/NavigationMenu/bottom%20_navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Screens/Login/login_screen.dart';

class WrapperState extends StatefulWidget {
  const WrapperState({super.key});

  @override
  State<WrapperState> createState() => _WrapperStateState();
}

class _WrapperStateState extends State<WrapperState> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
        if(snapshot.hasData){
          return const BottomNavigationMenu();
        }else{
          return const LoginScreen();
        }
          }
      ),
    );
  }
}