import 'package:dartz/dartz.dart';
import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';

abstract class HomeRepository {
  Future<Either<String, List<AlbumEntity>>> getAlbums();
}
