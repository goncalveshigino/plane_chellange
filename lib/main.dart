import 'package:flutter/material.dart';
import 'config/router/app_router.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(useMaterial3: true)
      );
  }
}


 //TypeOfTicket()