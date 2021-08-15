import 'package:dartz/dartz.dart';
import 'package:flutter_spotify_clone/app/home/data/datasource/home_datasource.dart';
import 'package:flutter_spotify_clone/app/home/data/repository/album_mapper.dart';
import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';
import 'package:flutter_spotify_clone/app/home/domain/repository/marketplace_product_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  HomeRepositoryImp({
    required HomeDatasource homeDatasource,
    required AlbumMapper albumMapper,
  })  : _datasource = homeDatasource,
        _mapper = albumMapper;

  final HomeDatasource _datasource;
  final AlbumMapper _mapper;

  @override
  Future<Either<String, List<AlbumEntity>>> getAlbums() async {
    final result = await _datasource.getAlbums();

    return _mapper.convert(result);
  }
}
