import 'package:flutter/widgets.dart';

class TicketingFilterHeaderDelegate extends SliverPersistentHeaderDelegate {
  TicketingFilterHeaderDelegate({required this.child});

  final Widget child;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  double get maxExtent => 44.0; // 등급 필터 칩 높이

  @override
  double get minExtent => 44.0;

  @override
  bool shouldRebuild(covariant TicketingFilterHeaderDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
