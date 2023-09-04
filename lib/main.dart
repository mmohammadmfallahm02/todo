import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_task_manager/app/app.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

