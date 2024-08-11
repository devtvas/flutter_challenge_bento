import 'package:flutter_challenge_bento/app/data/repositories/product_repository_impl.dart';
import 'package:flutter_challenge_bento/app/data/sources/product_source.dart';
import 'package:flutter_challenge_bento/app/domain/usecases/product_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repositories/product_repository.dart';

final dependencies = GetIt.instance;

Future<void> initializeDependencies() async {
  // DATASOURCE
  dependencies.registerSingleton<ProductSource>(ProductSourceImpl());

  // REPOSITORY
  dependencies.registerSingleton<ProductsRepository>(ProductsRepositoryImpl());

  // USECASE
  dependencies.registerSingleton<ProductUseCase>(ProductUseCase());
}
