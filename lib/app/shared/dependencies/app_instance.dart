import 'package:flutter_challenge_bento/app/data/repositories/product_repository_impl.dart';
import 'package:flutter_challenge_bento/app/data/sources/product_source.dart';
import 'package:flutter_challenge_bento/app/domain/usecases/product_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repositories/product_repository.dart';

final instances = GetIt.instance;

Future<void> initializeDependencies() async {
  // DATASOURCE
  instances.registerSingleton<ProductSource>(ProductSourceImpl());

  // REPOSITORY
  instances.registerSingleton<ProductsRepository>(ProductsRepositoryImpl());

  // USECASE
  instances.registerSingleton<ProductUseCase>(ProductUseCase());
}
