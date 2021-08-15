import 'package:dartz/dartz.dart';
import 'package:flutter_spotify_clone/app/home/data/model/response/album_model.dart';
import 'package:flutter_spotify_clone/core/common/utils/api_result.dart';

class AlbumMapper {
  Either<String, List<AlbumModel>> convert(ApiResult result) {
    if (result is SuccessData) {
      try {
        final resultMapper = AlbumModel.fromJsonArray(result.data);
        return Right(resultMapper);
      } on Exception catch (_) {
        return Left(
          'AlbumMapper error',
        );
      }
    }

    return Left(result.message);
  }
}
