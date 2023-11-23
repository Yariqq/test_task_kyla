import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task/common/common_size.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: CommonSize.paddingLarge),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      title: Text(
        'Discover',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: Colors.grey,
            ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: CommonSize.paddingLarge),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}
