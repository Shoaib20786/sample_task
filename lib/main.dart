import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_task/presentation/product_screen/product_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample Task',
      home: ProductScreen(),
    );
  }
}
