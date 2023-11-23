import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';
import 'package:test_task/common/image_path.dart';

const _bottomPhotoContainerRadius = 8.0;
const _bottomPhotoContainerSize = 50.0;

class PhotoListPreview extends StatelessWidget {
  const PhotoListPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          foregroundImage: AssetImage(ImagePath.imAvatar),
        ),
        Row(
          children: [
            Container(
              height: _bottomPhotoContainerSize,
              width: _bottomPhotoContainerSize,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_bottomPhotoContainerRadius),
                ),
                image: DecorationImage(
                  image: AssetImage(ImagePath.imAntelopeCanyon),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: CommonSize.paddingSmall),
            Container(
              height: _bottomPhotoContainerSize,
              width: _bottomPhotoContainerSize,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_bottomPhotoContainerRadius),
                ),
                image: DecorationImage(
                  image: AssetImage(ImagePath.imMagicalIsland),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: CommonSize.paddingSmall),
            Container(
              height: _bottomPhotoContainerSize,
              width: _bottomPhotoContainerSize,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_bottomPhotoContainerRadius),
                ),
                image: DecorationImage(
                  image: AssetImage(ImagePath.imJapan),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
