import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';

const _carouselItemRadius = 12.0;

class CarouselItemHeaderPhoto extends StatelessWidget {
  final String imagePath;

  const CarouselItemHeaderPhoto({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(_carouselItemRadius),
          ),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25), //TODO: in const
              offset: const Offset(0.0, 30.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: CommonSize.paddingLarge,
            right: CommonSize.paddingLarge,
            bottom: CommonSize.paddingDefault,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: CommonSize.paddingSmall),
                  Text(
                    '4569',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.heart_broken,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: CommonSize.paddingSmall),
                  Text(
                    '24',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
