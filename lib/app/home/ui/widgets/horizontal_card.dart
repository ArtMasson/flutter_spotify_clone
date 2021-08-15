import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/core/common/utils/screen_utils.dart';
import 'package:flutter_spotify_clone/config/ui/theme/fonts.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
    required this.height,
    required this.width,
    required this.name,
    required this.image,
  }) : super(key: key);

  final double height;
  final double width;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF323232).withOpacity(0.8),
            const Color(0xFF2A2A2A).withOpacity(0.8),
            const Color(0xFF272727).withOpacity(0.8),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            child: Image.network(
              image,
              height: height,
              width: 62,
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Flexible(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: AppFonts.getTextStyle(
                fontColor: Colors.white,
                fontSize: AppFonts.textSmallerSize,
                fontWeight: AppFonts.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
