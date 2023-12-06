import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_example_project/controller/home_screen_comtroller.dart';
import 'package:state_management_example_project/controller/next_screen_controller.dart';
import 'package:state_management_example_project/view/home_screen/home_screen.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => NextScreenController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
