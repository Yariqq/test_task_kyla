import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';
import 'package:test_task/home/presentation/widgets/carousel_item_header_photo.dart';
import 'package:test_task/home/presentation/widgets/photo_list_preview.dart';

const _carouselItemRadius = 12.0;

class CarouselItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;

  const CarouselItem({
    required this.imagePath,
    required this.name,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(_carouselItemRadius),
        ),
      ),
      child: Column(
        children: [
          CarouselItemHeaderPhoto(imagePath: imagePath),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: CommonSize.paddingLarge,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: CommonSize.paddingDoubleDefault),
                const PhotoListPreview(),
                const SizedBox(height: CommonSize.paddingDoubleDefault),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(height: CommonSize.paddingDefault),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
                const SizedBox(height: CommonSize.paddingLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
