import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';
import 'package:test_task/common/image_path.dart';
import 'package:test_task/home/presentation/widgets/analytics_chart.dart';
import 'package:test_task/home/presentation/widgets/bottom_sheet_list_item_widget.dart';
import 'package:test_task/home/presentation/widgets/home_page_bottom_sheet_preview.dart';

const _plusIconButtonRadius = 8.0;

class HomePageBottomSheetBody extends StatelessWidget {
  const HomePageBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQueryData.fromView(View.of(context)).size.height -
                MediaQueryData.fromView(View.of(context)).viewPadding.top * 2,
          ),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const HomePageBottomSheetPreview(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: CommonSize.paddingDefault,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              const Text('Price'),
                              Text(
                                'Jan, 2020',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                            ],
                          ),
                          Container(
                            padding:
                                const EdgeInsets.all(CommonSize.paddingSmall),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(_plusIconButtonRadius),
                              ),
                              color: Colors.black87,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: CommonSize.paddingDefault),
                      const AnalyticsChart(),
                    ],
                  ),
                ),
                const SizedBox(height: CommonSize.paddingDefault),
                const Padding(
                  padding: EdgeInsets.only(
                    left: CommonSize.paddingDefault,
                    right: CommonSize.paddingDoubleDefault,
                  ),
                  child: Column(
                    children: [
                      BottomSheetListItemWidget(
                        imagePath: ImagePath.imLufthansa,
                      ),
                      SizedBox(height: CommonSize.paddingLarge),
                      BottomSheetListItemWidget(
                        imagePath: ImagePath.imAsiaAirlines,
                      ),
                      SizedBox(height: CommonSize.paddingLarge),
                      BottomSheetListItemWidget(
                        imagePath: ImagePath.imIranAir,
                      ),
                      SizedBox(height: CommonSize.paddingLarge),
                      BottomSheetListItemWidget(
                        imagePath: ImagePath.imLufthansa,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
