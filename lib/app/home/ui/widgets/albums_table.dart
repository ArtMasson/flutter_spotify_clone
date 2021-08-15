import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/app/home/domain/entity/album_entity.dart';
import 'package:flutter_spotify_clone/app/home/ui/widgets/horizontal_card.dart';
import 'package:flutter_spotify_clone/core/common/utils/screen_utils.dart';

class AlbumsTable extends StatelessWidget {
  const AlbumsTable({
    Key? key,
    required this.albums,
  }) : super(key: key);

  final List<AlbumEntity> albums;

  static const rowSpacer = TableRow(
    children: [
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Table(
        children: [
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: HorizontalCard(
                  height: 62,
                  width: 187,
                  name: albums[0].name,
                  image: albums[0].coverImage,
                ),
              ),
              HorizontalCard(
                height: 62,
                width: 187,
                name: albums[1].name,
                image: albums[1].coverImage,
              ),
            ],
          ),
          rowSpacer,
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: HorizontalCard(
                  height: 62,
                  width: 187,
                  name: albums[2].name,
                  image: albums[2].coverImage,
                ),
              ),
              HorizontalCard(
                height: 62,
                width: 187,
                name: albums[3].name,
                image: albums[3].coverImage,
              ),
            ],
          ),
          rowSpacer,
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: HorizontalCard(
                  height: 62,
                  width: 187,
                  name: albums[4].name,
                  image: albums[4].coverImage,
                ),
              ),
              HorizontalCard(
                height: 62,
                width: 187,
                name: albums[5].name,
                image: albums[5].coverImage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
