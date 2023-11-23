import 'package:flutter/material.dart';
import 'package:test_task/common/common_size.dart';

const _dialogHeight = 200.0;

class ItemInfoDialogBody extends StatelessWidget {
  const ItemInfoDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CommonSize.paddingLarge,
        vertical: _dialogHeight,
      ),
      child: Container(
        padding: const EdgeInsets.all(CommonSize.paddingDefault),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CommonSize.defaultRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Icon(
              Icons.traffic_rounded,
              color: Colors.red,
            ),
            const SizedBox(height: CommonSize.paddingDefault),
            Container(
              padding: const EdgeInsets.all(
                CommonSize.paddingDoubleDefault,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(CommonSize.defaultRadius),
                color: Colors.deepPurpleAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JFK - LAX',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: CommonSize.paddingSmall),
                      Text(
                        '10:25 - 12:50',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: CommonSize.paddingSmall),
                      Text(
                        '13:30 - 15:50',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
