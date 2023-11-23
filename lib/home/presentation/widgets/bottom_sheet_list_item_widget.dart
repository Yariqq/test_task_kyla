import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';
import 'package:test_task/home/presentation/widgets/item_info_dialog_body.dart';

const _imageSize = 50.0;
const _transparentContainerHeight = 85.0;
const _itemBodyRightPadding = 40.0;
const _whiteContainerSize = 25.0;
const _whiteContainerTopPadding = 25.0;
const _whiteContainerLeftPadding = 5.0;
const _priceContainerTopPadding = 16.0;

class BottomSheetListItemWidget extends StatelessWidget {
  final String imagePath;

  const BottomSheetListItemWidget({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (builderContext) {
            return const ItemInfoDialogBody();
          },
        );
      },
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: _imageSize,
            height: _imageSize,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: _transparentContainerHeight,
                  color: Colors.transparent,
                ),
                Positioned(
                  right: _itemBodyRightPadding,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: CommonSize.paddingDefault,
                      horizontal: CommonSize.paddingLarge,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.13),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(3.0)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JFK - LAX',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            const SizedBox(height: CommonSize.paddingSmall),
                            Text(
                              '10:25 - 12:50',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(width: CommonSize.paddingDefault),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              CommonSize.defaultRadius,
                            ),
                          ),
                          child: const Icon(
                            Icons.swap_horiz,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: CommonSize.paddingDefault),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LAX - JFK',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            const SizedBox(height: CommonSize.paddingSmall),
                            Text(
                              '13:30 - 15:50',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: _whiteContainerTopPadding,
                  left: _whiteContainerLeftPadding,
                  child: Container(
                    height: _whiteContainerSize,
                    width: _whiteContainerSize,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        _whiteContainerTopPadding,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _priceContainerTopPadding,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: CommonSize.paddingSmall,
                      top: 12,
                      right: CommonSize.paddingSmall,
                      bottom: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      r'$486',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
