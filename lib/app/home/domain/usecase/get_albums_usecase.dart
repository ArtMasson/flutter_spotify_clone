import 'package:dartz/dartz.dart';
import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';
import 'package:flutter_spotify_clone/app/home/domain/repository/home_repository.dart';

class GetAlbumsUsecase {
  final HomeRepository repository;
  GetAlbumsUsecase({required this.repository});

  Future<Either<String, List<AlbumEntity>>> call() => repository.getAlbums();
}
