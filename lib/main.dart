import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_size/window_size.dart';

import 'package:paste_law/cubit/quote_cubit.dart';
import 'package:paste_law/screens/home_screen/home_screen.dart';

void main() {
  //ensure initialisation of WidgetsBinding
  WidgetsFlutterBinding.ensureInitialized();

  //set window constraints
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    setWindowTitle('PasteLaw');
    setWindowMaxSize(const Size(500, 1000));
    setWindowMinSize(const Size(235, 430));
    setWindowFrame(Rect.fromCenter(
        center: const Offset(250, 400), width: 300, height: 400));
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PasteLaw',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => QuoteCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
