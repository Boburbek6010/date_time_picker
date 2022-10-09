import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeController = ChangeNotifierProvider((ref) => HomeController());

// DateTime dateTime = DateTime(2022, 10, 09);

class HomeController extends ChangeNotifier{

  // Future<void>takeTime(BuildContext context)async{
  //   DateTime? newDate = await showDatePicker(
  //     initialDate: dateTime,
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2100),
  //     context: context,
  //   );
  //   if(newDate == null) {
  //     return;
  //   } else{
  //     dateTime = newDate;
  //   }
  //   notifyListeners();
  // }
}