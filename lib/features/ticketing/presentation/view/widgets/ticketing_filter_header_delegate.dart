import 'package:flutter/widgets.dart';

class TicketingFilterHeaderDelegate extends SliverPersistentHeaderDelegate {
  TicketingFilterHeaderDelegate({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 54.0; // 필터 바 실제 높이에 맞춘 고정 값

  @override
  double get minExtent => 54.0;

  @override
  bool shouldRebuild(covariant TicketingFilterHeaderDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}

