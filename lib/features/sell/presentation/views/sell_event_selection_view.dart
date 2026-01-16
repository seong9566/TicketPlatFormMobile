import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_viewmodel.dart';
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
  void initState() {
    super.initState();
    // 화면 진입 시 이벤트 목록 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(sellRegisterViewModelProvider.notifier)
          .loadEvents(widget.category.categoryId);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onEventSelected(SellEventUiModel event) {
    ref.read(sellRegisterViewModelProvider.notifier).selectEvent(event);
  }

  void _onSearch() {
    final keyword = _searchController.text;
    ref
        .read(sellRegisterViewModelProvider.notifier)
        .searchEvents(widget.category.categoryId, keyword);
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
    final state = ref.watch(sellRegisterViewModelProvider);

    if (state.isLoading && state.events.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.errorMessage != null && state.events.isEmpty) {
      return _buildErrorView(state.errorMessage!);
    }

    return _buildBody(state);
  }

  Widget _buildErrorView(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('오류가 발생했습니다: $error'),
          const SizedBox(height: AppSpacing.md),
          ElevatedButton(
            onPressed: () => ref
                .read(sellRegisterViewModelProvider.notifier)
                .loadEvents(widget.category.categoryId),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SellRegisterState state) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBar(),
                // _buildFilterSection(state.eventsTotalCount),
                // const SizedBox(height: AppSpacing.md),
                _buildEventList(state),
              ],
            ),
          ),
        ),
        _buildNextButton(state),
      ],
    );
  }

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

  // Widget _buildFilterSection(int totalCount) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           '총 $totalCount개',
  //           style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
  //         ),
  //         DropdownButton<String>(
  //           value: _selectedRegion,
  //           icon: const Icon(Icons.keyboard_arrow_down),
  //           underline: const SizedBox(),
  //           items: ['지역', '서울', '부산', '대구', '인천']
  //               .map(
  //                 (region) =>
  //                     DropdownMenuItem(value: region, child: Text(region)),
  //               )
  //               .toList(),
  //           onChanged: (value) {
  //             if (value != null) {
  //               setState(() => _selectedRegion = value);
  //             }
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildEventList(SellRegisterState state) {
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
        final isSelected = state.selectedEvent?.eventId == event.eventId;

        return SellEventCard(
          event: event,
          isSelected: isSelected,
          onTap: () => _onEventSelected(event),
        );
      },
    );
  }

  Widget _buildNextButton(SellRegisterState state) {
    final isEnabled = state.selectedEvent != null;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: isEnabled
                ? () => _onNextPressed(state.selectedEvent!)
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              disabledBackgroundColor: AppColors.disabled,
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
