import 'package:flutter_spotify_clone/app/home/data/datasource/home_datasource.dart';
import 'package:flutter_spotify_clone/app/home/data/repository/album_mapper.dart';
import 'package:flutter_spotify_clone/app/home/data/repository/home_repository_imp.dart';
import 'package:flutter_spotify_clone/app/home/domain/repository/marketplace_product_repository.dart';
import 'package:flutter_spotify_clone/app/home/domain/usecase/get_albums_usecase.dart';
import 'package:flutter_spotify_clone/app/home/ui/controller/home_controller.dart';
import 'package:flutter_spotify_clone/config/ui/theme/data/datasources/theme_datasource.dart';
import 'package:flutter_spotify_clone/config/ui/theme/data/datasources/theme_datasource_impl.dart';
import 'package:flutter_spotify_clone/config/ui/theme/data/repositories/theme_repository_impl.dart';
import 'package:flutter_spotify_clone/config/ui/theme/domain/repositories/theme_repository.dart';
import 'package:flutter_spotify_clone/config/ui/theme/ui/stores/theme_store.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureInjection() async {
  getIt
    ..registerLazySingleton<ThemeDataSource>(
      () => ThemeDataSourceImpl(),
    )
    ..registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(),
    )
    ..registerLazySingleton(() => ThemeStore())
    ..registerLazySingleton<HomeDatasource>(
      () => HomeDatasource(),
    )
    ..registerLazySingleton<AlbumMapper>(
      () => AlbumMapper(),
    )
    ..registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImp(
        homeDatasource: getIt<HomeDatasource>(),
        albumMapper: getIt<AlbumMapper>(),
      ),
    )
    ..registerLazySingleton<GetAlbumsUsecase>(
      () => GetAlbumsUsecase(
        repository: getIt<HomeRepository>(),
      ),
    )
    ..registerFactory<HomeController>(
      () => HomeController(
        usecase: getIt<GetAlbumsUsecase>(),
      ),
    );
}
