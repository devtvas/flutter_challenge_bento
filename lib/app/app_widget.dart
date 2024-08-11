import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/home/bloc/product_cubit.dart';
import 'presentation/home/pages/home_page.dart';
import 'shared/theme/theme_cubit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<ProductCubit>(
          create: (_) => ProductCubit(),
        ),
        // Adicione outros Cubits ou Blocs aqui conforme necessário
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            theme: theme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
