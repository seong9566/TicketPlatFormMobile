import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_date_time_selection_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_date_time_selection_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/date_selection_calendar.dart';

/// 티켓 판매 날짜/시간 선택 화면
class SellDateTimeSelectionView extends ConsumerStatefulWidget {
  final String eventId;
  final String eventTitle;

  const SellDateTimeSelectionView({
    super.key,
    required this.eventId,
    required this.eventTitle,
  });

  @override
  ConsumerState<SellDateTimeSelectionView> createState() =>
      _SellDateTimeSelectionViewState();
}

class _SellDateTimeSelectionViewState
    extends ConsumerState<SellDateTimeSelectionView> {
  DateTime _focusedDay = DateTime.now();

  int get _eventIdInt => int.parse(widget.eventId);

  void _onDateSelected(DateTime selectedDay, DateTime focusedDay) {
    ref
        .read(sellDateTimeSelectionViewModelProvider(_eventIdInt).notifier)
        .selectDate(selectedDay);
    setState(() => _focusedDay = focusedDay);
  }

  void _onScheduleSelected(String scheduleId) {
    ref
        .read(sellDateTimeSelectionViewModelProvider(_eventIdInt).notifier)
        .selectSchedule(scheduleId);
  }

  void _onConfirm(SellDateTimeSelectionState state) {
    final schedule = state.selectedSchedule;
    if (schedule == null) return;

    context.pushNamed(
      AppRouterPath.sellSeatInfo.name,
      pathParameters: {'eventId': widget.eventId},
      queryParameters: {
        'scheduleId': schedule.scheduleId,
        'date': state.selectedDate.toString(),
        'time': schedule.time,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(
      sellDateTimeSelectionViewModelProvider(_eventIdInt),
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
        widget.eventTitle,
        style: AppTextStyles.heading3.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
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
              sellDateTimeSelectionViewModelProvider(_eventIdInt),
            ),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SellDateTimeSelectionState state) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                DateSelectionCalendar(
                  focusedDay: _focusedDay,
                  selectedDay: state.selectedDate,
                  availableDates: state.availableDates,
                  onDaySelected: _onDateSelected,
                  onPageChanged: (focusedDay) {
                    setState(() => _focusedDay = focusedDay);
                  },
                ),
                if (state.selectedDate != null &&
                    state.selectedDateSchedules.isNotEmpty)
                  _buildTimeSlotSection(state),
              ],
            ),
          ),
        ),
        _buildConfirmButton(state),
      ],
    );
  }

  /// 시간 선택 섹션
  Widget _buildTimeSlotSection(SellDateTimeSelectionState state) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '시간 선택',
            style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSpacing.md),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.sm,
              children: state.selectedDateSchedules.map((schedule) {
                return _buildTimeSlotChip(schedule, state);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlotChip(
    SellScheduleUiModel schedule,
    SellDateTimeSelectionState state,
  ) {
    final isSelected = state.selectedScheduleId == schedule.scheduleId;

    return GestureDetector(
      onTap: () => _onScheduleSelected(schedule.scheduleId),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.muted,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          schedule.time,
          style: AppTextStyles.body1.copyWith(
            color: isSelected ? Colors.white : AppColors.textPrimary,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  /// 하단 확인 버튼
  Widget _buildConfirmButton(SellDateTimeSelectionState state) {
    final isEnabled =
        state.selectedDate != null && state.selectedScheduleId != null;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '선택 완료',
          onPressed: isEnabled ? () => _onConfirm(state) : null,
          isLoading: false,
        ),
      ),
    );
  }
}
