import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/date_selection_calendar.dart';

/// 티켓 판매 날짜/시간 선택 화면
class SellDateTimeSelectionView extends StatefulWidget {
  final String eventId;
  final String eventTitle;

  const SellDateTimeSelectionView({
    super.key,
    required this.eventId,
    required this.eventTitle,
  });

  @override
  State<SellDateTimeSelectionView> createState() =>
      _SellDateTimeSelectionViewState();
}

class _SellDateTimeSelectionViewState extends State<SellDateTimeSelectionView> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String? _selectedTime;

  // TODO: API에서 실제 공연 일정 가져오기
  // 날짜별 시간대 정보
  final _dateTimeSlots = <DateTime, List<String>>{
    DateTime(2026, 1, 5): ['14:00', '19:30', '22:00'],
    DateTime(2026, 1, 7): ['14:00'],
    DateTime(2026, 1, 10): ['19:30'],
    DateTime(2026, 1, 11): ['14:00', '19:30'],
    DateTime(2026, 1, 13): ['14:00', '19:30'],
    DateTime(2026, 1, 14): ['19:30'],
    DateTime(2026, 1, 20): ['14:00'],
    DateTime(2026, 1, 21): ['14:00', '19:30'],
    DateTime(2026, 1, 26): ['14:00', '19:30', '22:00'],
    DateTime(2026, 1, 27): ['19:30'],
    DateTime(2026, 1, 28): ['14:00', '19:30', '22:00', '21:00'],
  };

  List<String> get _selectedDateTimeSlots {
    if (_selectedDay == null) return [];
    final key = _dateTimeSlots.keys.firstWhere(
      (date) =>
          date.year == _selectedDay!.year &&
          date.month == _selectedDay!.month &&
          date.day == _selectedDay!.day,
      orElse: () => DateTime(1970),
    );
    return _dateTimeSlots[key] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context, widget.eventTitle),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                children: [
                  DateSelectionCalendar(
                    focusedDay: _focusedDay,
                    selectedDay: _selectedDay,
                    availableDates: _dateTimeSlots.keys.toList(),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        _selectedTime = null; // 날짜 변경 시 시간 선택 초기화
                      });
                    },
                    onPageChanged: (focusedDay) {
                      setState(() {
                        _focusedDay = focusedDay;
                      });
                    },
                  ),

                  // 날짜에 맞는 일정이 있다면
                  if (_selectedDay != null &&
                      _selectedDateTimeSlots.isNotEmpty) ...[
                    _buildTimeSlotSection(),
                  ],
                ],
              ),
            ),
          ),
          _buildConfirmButton(),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context, String eventTitle) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => context.pop(),
      ),
      title: Text(
        eventTitle,
        style: AppTextStyles.heading3.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      centerTitle: true,
    );
  }

  /// 시간 선택 섹션
  Widget _buildTimeSlotSection() {
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
              children: _selectedDateTimeSlots.map((time) {
                final isSelected = _selectedTime == time;
                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedTime = time);
                  },
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
                      time,
                      style: AppTextStyles.body1.copyWith(
                        color: isSelected
                            ? Colors.white
                            : AppColors.textPrimary,
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  /// 하단 확인 버튼
  Widget _buildConfirmButton() {
    final isEnabled = _selectedDay != null && _selectedTime != null;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '선택 완료',
          onPressed: isEnabled
              ? () {
                  context.pushNamed(
                    AppRouterPath.sellSeatInfo.name,
                    pathParameters: {'eventId': widget.eventId},
                    queryParameters: {
                      'date': _selectedDay.toString(),
                      'time': _selectedTime!,
                    },
                  );
                }
              : null,
          isLoading: false,
        ),
      ),
    );
  }
}
