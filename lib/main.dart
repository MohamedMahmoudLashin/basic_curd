import 'package:basic_curd/home/presentation/add_note/add_note_cubit.dart';
import 'package:basic_curd/home/presentation/screens/home_screen.dart';
import 'package:basic_curd/simple_bloc_observer.dart';
import 'package:basic_curd/splash_screen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'home/data/models/todo_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(TodoModelAdapter());
  await Hive.openBox<TodoModel>("todos");

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
      
        title: 'Basic CURD',
      
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
        ),
      
        home: const SplashScreen(),
      
        routes: {
          "/splash": (context) => const SplashScreen(),
          "/home": (context) => const HomeScreen(),
        },
      ),
    );
  }
}