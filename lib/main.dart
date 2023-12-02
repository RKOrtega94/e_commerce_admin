import 'package:e_commerce_admin/firebase_options.dart';
import 'package:e_commerce_admin/src/app.dart';
import 'package:e_commerce_admin/src/presentation/controllers/_controllers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(CategoryController());
  runApp(const App());
}
