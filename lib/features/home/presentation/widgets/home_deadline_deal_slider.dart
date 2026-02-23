import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

class HomeDeadlineDealSlider extends StatefulWidget {
  const HomeDeadlineDealSlider({super.key, required this.deals});

  final List<DeadlineDealUiModel> deals;

  @override
  State<HomeDeadlineDealSlider> createState() => _HomeDeadlineDealSliderState();
}

class _HomeDeadlineDealSliderState extends State<HomeDeadlineDealSlider>
    with WidgetsBindingObserver {
  static const _autoSlideInterval = Duration(seconds: 3);
  static const _slideDuration = Duration(milliseconds: 350);

  late final PageController _pageController;
  Timer? _autoSlideTimer;
  int _currentIndex = 0;
  bool _isAutoAnimating = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _pageController = PageController();
    _startAutoSlide();
  }

  @override
  void didUpdateWidget(covariant HomeDeadlineDealSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.deals.length != widget.deals.length) {
      _currentIndex = 0;
      _restartAutoSlide();
      if (_pageController.hasClients) {
        _pageController.jumpToPage(0);
      }
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _startAutoSlide();
      return;
    }

    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _stopAutoSlide();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopAutoSlide();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.deals.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: SizedBox(
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          child: Stack(
            fit: StackFit.expand,
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: widget.deals.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  final deal = widget.deals[index];
                  return _DealCard(deal: deal);
                },
              ),
              Positioned(
                bottom: AppSpacing.sm,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.deals.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: _currentIndex == index ? 18 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.white.withValues(alpha: 0.45),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    if (!mounted) {
      return;
    }

    setState(() {
      _currentIndex = index;
    });

    if (!_isAutoAnimating) {
      _restartAutoSlide();
    }
  }

  void _startAutoSlide() {
    _stopAutoSlide();
    if (widget.deals.length <= 1) {
      return;
    }

    _autoSlideTimer = Timer.periodic(_autoSlideInterval, (_) {
      if (!mounted || !_pageController.hasClients || widget.deals.isEmpty) {
        return;
      }

      final nextPage = (_currentIndex + 1) % widget.deals.length;
      _isAutoAnimating = true;
      _pageController
          .animateToPage(
            nextPage,
            duration: _slideDuration,
            curve: Curves.easeInOut,
          )
          .whenComplete(() {
            _isAutoAnimating = false;
          });
    });
  }

  void _stopAutoSlide() {
    _autoSlideTimer?.cancel();
    _autoSlideTimer = null;
  }

  void _restartAutoSlide() {
    _stopAutoSlide();
    _startAutoSlide();
  }
}

class _DealCard extends StatelessWidget {
  const _DealCard({required this.deal});

  final DeadlineDealUiModel deal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.push('${AppRouterPath.ticketing.path}/${deal.eventId}'),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: deal.imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(color: AppColors.muted),
            errorWidget: (context, url, error) => Container(
              color: AppColors.muted,
              child: const Icon(
                Icons.image_not_supported_outlined,
                color: AppColors.textTertiary,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.12),
                  Colors.black.withValues(alpha: 0.72),
                ],
              ),
            ),
          ),
          Positioned(
            top: AppSpacing.sm,
            left: AppSpacing.sm,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.xs,
              ),
              decoration: BoxDecoration(
                color: _dDayBadgeColor(deal.daysLeft),
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: Text(
                deal.dDayLabel,
                style: AppTextStyles.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: AppSpacing.md,
            right: AppSpacing.md,
            bottom: AppSpacing.md,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deal.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.body1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  deal.venue,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.caption.copyWith(
                    color: Colors.white.withValues(alpha: 0.86),
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Row(
                  children: [
                    Text(
                      deal.discountLabel,
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.deadlineBadgeDday,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      deal.displayPrice,
                      style: AppTextStyles.body1.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '🎫 ${deal.availableTicketLabel}',
                      style: AppTextStyles.caption.copyWith(
                        color: Colors.white.withValues(alpha: 0.9),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _dDayBadgeColor(int daysLeft) {
    if (daysLeft <= 0) {
      return AppColors.deadlineBadgeDday;
    }
    if (daysLeft == 1) {
      return AppColors.deadlineBadgeD1;
    }
    if (daysLeft == 2) {
      return AppColors.deadlineBadgeD2;
    }
    return AppColors.deadlineBadgeD3;
  }
}
