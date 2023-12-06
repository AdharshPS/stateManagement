import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_example_project/controller/home_screen_comtroller.dart';
import 'package:state_management_example_project/view/next_screen/next_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      backgroundColor:
          Provider.of<HomeScreenController>(context).isClicked == true
              ? Provider.of<HomeScreenController>(context).colorsList[
                  Provider.of<HomeScreenController>(context).colorIndex!]
              : null,
      appBar: AppBar(
          // title: Text("First Page"),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HomeScreenController>(
              builder: (context, valueOf, child) => Text(
                valueOf.addNumber.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextScreen(),
                  ),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
