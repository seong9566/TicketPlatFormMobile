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
  double get maxExtent => 81.0; // 통합 필터 바 실제 높이 (등급 44 + 헤더 36 + 디바이더 1)

  @override
  double get minExtent => 81.0;

  @override
  bool shouldRebuild(covariant TicketingFilterHeaderDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
