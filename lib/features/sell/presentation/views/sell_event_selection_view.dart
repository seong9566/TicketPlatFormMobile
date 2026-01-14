import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_event_selection_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_event_selection_viewmodel.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/widgets/sell_event_card.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_search_bar.dart';

/// 티켓 판매 공연 선택 화면
class SellEventSelectionView extends ConsumerStatefulWidget {
  final Category category;

  const SellEventSelectionView({super.key, required this.category});

  @override
  ConsumerState<SellEventSelectionView> createState() =>
      _SellEventSelectionViewState();
}

class _SellEventSelectionViewState
    extends ConsumerState<SellEventSelectionView> {
  final _searchController = TextEditingController();
  String _selectedRegion = '지역';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onEventSelected(int eventId) {
    ref
        .read(
          sellEventSelectionViewModelProvider(
            widget.category.categoryId,
          ).notifier,
        )
        .selectEvent(eventId);
  }

  void _onSearch() {
    final keyword = _searchController.text;
    ref
        .read(
          sellEventSelectionViewModelProvider(
            widget.category.categoryId,
          ).notifier,
        )
        .search(keyword);
  }

  void _onNextPressed(SellEventUiModel event) {
    context.pushNamed(
      AppRouterPath.sellDateTimeSelection.name,
      pathParameters: {'eventId': event.eventId.toString()},
      queryParameters: {'eventTitle': event.title},
    );
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(
      sellEventSelectionViewModelProvider(widget.category.categoryId),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: asyncState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => _buildErrorView(error),
        data: (state) => _buildBody(state),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }

  Widget _buildErrorView(Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('오류가 발생했습니다: $error'),
          const SizedBox(height: AppSpacing.md),
          ElevatedButton(
            onPressed: () => ref.invalidate(
              sellEventSelectionViewModelProvider(widget.category.categoryId),
            ),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SellEventSelectionState state) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                _buildSearchBar(),
                _buildFilterSection(state.totalCount),
                const SizedBox(height: AppSpacing.md),
                _buildEventList(state),
              ],
            ),
          ),
        ),
        _buildNextButton(state),
      ],
    );
  }

  /// 검색바 위젯
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: AppSearchBar(
        showBackIcon: false,
        controller: _searchController,
        hintText: '공연명을 검색하세요',
        onSubmitted: _onSearch,
      ),
    );
  }

  /// 필터 섹션 (총 개수 + 지역 드롭다운)
  Widget _buildFilterSection(int totalCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '총 $totalCount개',
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
  Widget _buildEventList(SellEventSelectionState state) {
    if (state.events.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Center(
          child: Text(
            '검색 결과가 없습니다.',
            style: AppTextStyles.body1.copyWith(color: AppColors.textSecondary),
          ),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      itemCount: state.events.length,
      itemBuilder: (context, index) {
        final event = state.events[index];
        final isSelected = state.selectedEventId == event.eventId;

        return SellEventCard(
          event: event,
          isSelected: isSelected,
          onTap: () => _onEventSelected(event.eventId),
        );
      },
    );
  }

  /// 하단 다음 버튼
  Widget _buildNextButton(SellEventSelectionState state) {
    final isEnabled = state.selectedEventId != null;
    final selectedEvent = isEnabled
        ? state.events
              .where((e) => e.eventId == state.selectedEventId)
              .firstOrNull
        : null;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: selectedEvent != null
                ? () => _onNextPressed(selectedEvent)
                : null,
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
                color: isEnabled ? Colors.white : AppColors.textTertiary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
