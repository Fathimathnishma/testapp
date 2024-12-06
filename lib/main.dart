import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/home/data/models/i_mainfacade.dart';
import 'package:test_app/features/home/presentation/provider/main_prvider.dart';
import 'package:test_app/features/home/presentation/view/home_screen.dart';
import 'package:test_app/firebase_options.dart';
import 'package:test_app/general/di/injection.dart';


var height;
var width;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  configureDependancy();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider(sl<IMainfacade>()),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}