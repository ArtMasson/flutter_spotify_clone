import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';

class AlbumModel extends AlbumEntity {
  const AlbumModel({
    required String id,
    required String name,
    required String coverImage,
  }) : super(
          id: id,
          name: name,
          coverImage: coverImage,
        );

  static List<AlbumModel> fromJsonArray(Map<String, dynamic> json) {
    var albums = <AlbumModel>[];
    if (json['albums'] != null) {
      json['albums'].forEach(
        (album) {
          albums.add(AlbumModel.fromJson(album));
        },
      );
    }
    return albums;
  }

  factory AlbumModel.fromJson(Map<String, dynamic> json) => AlbumModel(
        id: json['id'],
        name: json['name'],
        coverImage: json['cover_image'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['cover_image'] = coverImage;

    return data;
  }
}
