import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dateTime = DateTime(2022, 10, 09);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Time Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${dateTime.year} / ${dateTime.month} / ${dateTime.day}",
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              minWidth: 150,
              height: 50,
              shape: const StadiumBorder(),
              elevation: 0.5,
              color: Colors.transparent,
              onPressed: () async{
                DateTime? newDate = await showDatePicker(
                  initialDate: dateTime,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                  context: context,
                );
                if (newDate == null) {
                  return;
                } else {
                  setState(() {
                    dateTime = newDate;
                  });
                }
              },
              child: const Text("Date Time"),
            ),
          ],
        ),
      ),
    );
  }
}
