import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';
import 'package:test_task/common/image_path.dart';
import 'package:test_task/home/presentation/widgets/carousel_item.dart';
import 'package:test_task/home/presentation/widgets/home_page_app_bar.dart';
import 'package:test_task/home/presentation/widgets/home_page_bottom_sheet_body.dart';
import 'package:test_task/home/presentation/widgets/home_page_bottom_sheet_preview.dart';

const _bottomColorOpacity = 0.9;
const _carouselAspectRatio = 0.8;
const _carouselViewportFraction = 0.8;
const _bottomSheetRadius = 16.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(_bottomColorOpacity),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomSheet: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                clipBehavior: Clip.hardEdge,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_bottomSheetRadius),
                    topRight: Radius.circular(_bottomSheetRadius),
                  ),
                ),
                builder: (builderContext) {
                  return const HomePageBottomSheetBody();
                },
              );
            },
            child: const HomePageBottomSheetPreview(),
          ),
          appBar: const HomePageAppBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: CommonSize.paddingDoubleLarge),
            child: CarouselSlider(
              items: const [
                CarouselItem(
                  imagePath: ImagePath.imAntelopeCanyon,
                  name: 'Antelope Canyon Tour from LV',
                  description: 'USA 1 Day Experience',
                ),
                CarouselItem(
                  imagePath: ImagePath.imMagicalIsland,
                  name: 'Magical island worth discovering',
                  description: 'BALI 1 Day Experience',
                ),
                CarouselItem(
                  imagePath: ImagePath.imJapan,
                  name: 'Discover Japan this winter',
                  description: 'Tokyo 1 Day Experience',
                ),
              ],
              options: CarouselOptions(
                aspectRatio: _carouselAspectRatio,
                viewportFraction: _carouselViewportFraction,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
