// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore: unused_import
import 'dart:io'; 

class ThemeController extends GetxController {
  // ignore: non_constant_identifier_names
  var IsDart = false.obs;
  Map<String, ThemeMode> themeModes = {
    'light': ThemeMode.light,
    'dart': ThemeMode.dark
  }; 
  late SharedPreferences prefs; 

  static ThemeController get to => Get.find();


  loadThemeMode() async {  
    prefs = await SharedPreferences.getInstance();
    String themeText = prefs.getString('theme') ?? 'light';
    IsDart.value = themeText == 'dart' ? true : false;
    setMode(themeText);
  }

  Future setMode(String themeText) async {
    // ignore: unused_local_variable 
    ThemeMode? themeMode = themeModes[themeText];
    Get.changeThemeMode(themeMode!);
    //var box = await Hive.openBox('preferencias');
    //await box.put('theme', themeText);
    prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', themeText);
  }

  changeTheme() {
    // ignore: prefer_typing_uninitialized_variables
    setMode(IsDart.value ? 'light' : 'dart');
    IsDart.value = !IsDart.value; 
  }
}   