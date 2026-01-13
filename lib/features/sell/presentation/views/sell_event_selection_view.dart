import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/widgets/event_card.dart';

/// 티켓 판매 공연 선택 화면
class SellEventSelectionView extends StatefulWidget {
  final Category category;

  const SellEventSelectionView({super.key, required this.category});

  @override
  State<SellEventSelectionView> createState() => _SellEventSelectionViewState();
}

class _SellEventSelectionViewState extends State<SellEventSelectionView> {
  final _searchController = TextEditingController();
  String? _selectedEvent;
  String _selectedRegion = '지역';

  // TODO: API에서 실제 이벤트 목록 가져오기
  final _mockEvents = const [
    EventItem(
      id: '1',
      title: 'NCT WISH : WISH in Seoul',
      date: '2024.12.31',
      location: '올림픽공원 KSPO DOME',
      imageUrl: '',
    ),
    EventItem(
      id: '2',
      title: 'aespa LIVE TOUR - SYNK : Parallel Line',
      date: '2024.11.29 - 2024.12.01',
      location: '고척스카이돔',
      imageUrl: '',
    ),
    EventItem(
      id: '3',
      title: 'AKMU 10th ANNIVERSARY CONCERT',
      date: '2024.12.24 - 2024.12.25',
      location: '경희대학교 평화의전당',
      imageUrl: '',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          '공연 선택',
          style: AppTextStyles.heading3.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          _buildFilterSection(),
          const SizedBox(height: AppSpacing.md),
          _buildEventList(),
          _buildNextButton(),
        ],
      ),
    );
  }

  /// 검색바 위젯
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: '공연명을 검색하세요',
          hintStyle: AppTextStyles.body1.copyWith(
            color: AppColors.textTertiary,
          ),
          prefixIcon: const Icon(Icons.search, color: AppColors.textTertiary),
          filled: true,
          fillColor: AppColors.muted,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.md,
          ),
        ),
      ),
    );
  }

  /// 필터 섹션 (총 개수 + 지역 드롭다운)
  Widget _buildFilterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '총 ${_mockEvents.length}개',
            style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
          ),
          DropdownButton<String>(
            value: _selectedRegion,
            icon: const Icon(Icons.keyboard_arrow_down),
            underline: const SizedBox(),
            items: ['지역', '서울', '부산', '대구', '인천']
                .map(
                  (region) =>
                      DropdownMenuItem(value: region, child: Text(region)),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _selectedRegion = value);
              }
            },
          ),
        ],
      ),
    );
  }

  /// 공연 목록 리스트
  Widget _buildEventList() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        itemCount: _mockEvents.length,
        itemBuilder: (context, index) {
          final event = _mockEvents[index];
          final isSelected = _selectedEvent == event.id;

          return EventCard(
            event: event,
            isSelected: isSelected,
            onTap: () {
              setState(() => _selectedEvent = event.id);
            },
          );
        },
      ),
    );
  }

  /// 하단 다음 버튼
  Widget _buildNextButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: _selectedEvent == null
                ? null
                : () {
                    // TODO: 다음 단계로 이동
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              disabledBackgroundColor: AppColors.border,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: Text(
              '다음',
              style: AppTextStyles.body1.copyWith(
                color: _selectedEvent == null
                    ? AppColors.textTertiary
                    : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
