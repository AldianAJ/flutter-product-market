import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'cubit/cubit.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => ProductCubit()),
        BlocProvider(create: (_) => TransactionCubit())
      ],
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: true,
        home: SignInPage(),
      ),
    );
  }
}