
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/presentation/cubit/pagination_cubit.dart';
import 'features/ui/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pagaination cubit",
      home: BlocProvider(
        create: (BuildContext context)=> PaginationCubit()..fetchItems(),
        child: const HomeScreen(),
      ),
    );
  }
}
