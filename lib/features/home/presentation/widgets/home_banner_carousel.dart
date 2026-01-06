import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class HomeBannerCarousel extends StatelessWidget {
  const HomeBannerCarousel({
    super.key,
    required this.controller,
    required this.banners,
    required this.onPageChanged,
    required this.currentIndex,
  });

  final PageController controller;
  final List<String> banners;
  final ValueChanged<int> onPageChanged;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Stack(
              fit: StackFit.expand,
              children: [
                PageView.builder(
                  controller: controller,
                  onPageChanged: onPageChanged,
                  itemCount: banners.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                              ),
                              fit: BoxFit.cover,
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
                                Colors.black.withValues(alpha: 0.7),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(AppSpacing.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF0EA5E9),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'SALE',
                                  style: AppTextStyles.caption.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                banners[index],
                                style: AppTextStyles.heading1.copyWith(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '최고의 뮤지컬을 만나보세요',
                                style: AppTextStyles.body2.copyWith(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      banners.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        width: currentIndex == index ? 20 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.white.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
