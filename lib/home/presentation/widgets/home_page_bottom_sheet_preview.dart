import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';

const _bottomSheetControlHeight = 5.0;
const _bottomSheetControlWidth = 50.0;
const _bottomSheetControlRadius = 8.0;
const _blueDotSize = 7.0;
const _blueDotRadius = 16.0;

class HomePageBottomSheetPreview extends StatelessWidget {
  const HomePageBottomSheetPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: CommonSize.paddingDoubleLarge,
        top: CommonSize.paddingDefault,
        right: CommonSize.paddingDoubleLarge,
        bottom: CommonSize.paddingDoubleDefault,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: _bottomSheetControlHeight,
            width: _bottomSheetControlWidth,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.75),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  _bottomSheetControlRadius,
                ),
              ),
            ),
          ),
          const SizedBox(height: CommonSize.paddingDoubleDefault),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'T',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Text(
                'W',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Column(
                children: [
                  Container(
                    height: _blueDotSize,
                    width: _blueDotSize,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_blueDotRadius),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: CommonSize.paddingLittle),
                  Text(
                    'M',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
              Text(
                'Y',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
