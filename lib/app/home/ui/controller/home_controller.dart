import 'dart:async';
import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';
import 'package:flutter_spotify_clone/app/home/domain/usecase/get_albums_usecase.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  _HomeController({
    required GetAlbumsUsecase usecase,
  }) : _usecase = usecase;

  final GetAlbumsUsecase _usecase;

  List<AlbumEntity> albums = <AlbumEntity>[];

  @observable
  bool isLoading = false;

  @observable
  bool hasError = false;

  @action
  Future<void> fetchAlbums() async {
    isLoading = true;

    final result = await _usecase();

    result.fold(
      (l) => hasError = true,
      (albumsList) {
        albums = albumsList;
      },
    );

    isLoading = false;
  }
}
