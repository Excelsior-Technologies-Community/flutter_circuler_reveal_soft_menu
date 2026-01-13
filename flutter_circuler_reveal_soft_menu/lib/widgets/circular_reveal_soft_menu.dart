import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_circuler_reveal_soft_menu/models/menu_item_model.dart';
import 'package:flutter_circuler_reveal_soft_menu/utils/menu_constants.dart';

class CircularRevealSoftMenu extends StatefulWidget {
  final List<MenuItemModel> items;

  const CircularRevealSoftMenu({super.key, required this.items});

  @override
  State<CircularRevealSoftMenu> createState() => _CircularRevealSoftMenuState();
}

class _CircularRevealSoftMenuState extends State<CircularRevealSoftMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isOpen = false;

  final double menuItemBorderRadius = 6;

  final double menuItemSize = 44;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: animationDuration);

    animation = CurvedAnimation(parent: controller, curve: Curves.easeOutBack);
  }

  void toggleMenu() {
    if (isOpen) {
      controller.reverse();
    } else {
      controller.forward();
    }
    isOpen = !isOpen;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: menuRadius * 2,
      height: menuRadius * 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(widget.items.length, (index) {
            final angle = (2 * pi / widget.items.length) * index;

            return AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                final offset = Offset(
                  cos(angle) * menuRadius * animation.value,
                  sin(angle) * menuRadius * animation.value,
                );

                return Transform.translate(
                  offset: offset,
                  child: Opacity(
                    opacity: animation.value.clamp(0.0, 1.0),
                    child: SizedBox(
                      width: menuItemSize,
                      height: menuItemSize,
                      child: FloatingActionButton(
                        heroTag: 'menu_$index',
                        elevation: 3,
                        // backgroundColor: widget.backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            menuItemBorderRadius,
                          ),
                        ),
                        onPressed: widget.items[index].onTap,
                        child: Icon(
                          widget.items[index].icon,
                          size: menuItemSize * 0.55,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),

          /// Center Button
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: toggleMenu,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: animation,
            ),
          ),
        ],
      ),
    );
  }
}
