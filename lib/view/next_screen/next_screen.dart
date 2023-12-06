import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_example_project/controller/home_screen_comtroller.dart';
import 'package:state_management_example_project/controller/next_screen_controller.dart';

class NextScreen extends StatefulWidget {
  NextScreen({
    super.key,
  });

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  HomeScreenController con = HomeScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<NextScreenController>(context).secondColor,
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<HomeScreenController>(context, listen: false)
                        .decrement();

                    // print(Provider.of<HomeScreenController>(context).addNumber);
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<HomeScreenController>(context, listen: false)
                        .increment();
                    // print(Provider.of<HomeScreenController>(context).addNumber);
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                Provider.of<HomeScreenController>(context).colorsList.length,
                (index) => InkWell(
                  onTap: () {
                    Provider.of<HomeScreenController>(context, listen: false)
                        .indexOfColorList(index: index);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Provider.of<HomeScreenController>(context)
                          .colorsList[index],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<NextScreenController>(context, listen: false)
                        .secondScreenColor(selectedColor: Colors.red);
                  },
                  child: Text("Red"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<NextScreenController>(context, listen: false)
                        .secondScreenColor(selectedColor: Colors.blue);
                  },
                  child: Text("Blue"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<NextScreenController>(context, listen: false)
                        .secondScreenColor(selectedColor: Colors.green);
                  },
                  child: Text("Green"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<NextScreenController>(context, listen: false)
                        .secondScreenColor(selectedColor: Colors.white);
                  },
                  child: Text("White"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
