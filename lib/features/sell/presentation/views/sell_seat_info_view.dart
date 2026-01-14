import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_seat_info_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_seat_info_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

/// 좌석 정보 입력 화면
class SellSeatInfoView extends ConsumerStatefulWidget {
  final String eventId;
  final String scheduleId;
  final String date;
  final String time;

  const SellSeatInfoView({
    super.key,
    required this.eventId,
    required this.scheduleId,
    required this.date,
    required this.time,
  });

  @override
  ConsumerState<SellSeatInfoView> createState() => _SellSeatInfoViewState();
}

class _SellSeatInfoViewState extends ConsumerState<SellSeatInfoView> {
  final _customLocationController = TextEditingController();
  final _areaController = TextEditingController();
  final _rowController = TextEditingController();

  int get _eventIdInt => int.parse(widget.eventId);

  @override
  void dispose() {
    _customLocationController.dispose();
    _areaController.dispose();
    _rowController.dispose();
    super.dispose();
  }

  void _onLocationSelected(SellSeatLocationUiModel location) {
    ref
        .read(sellSeatInfoViewModelProvider(_eventIdInt).notifier)
        .selectLocation(location.locationId);
    Navigator.pop(context);
  }

  void _onConfirm(SellSeatInfoState state) {
    final locationName = state.isCustomLocation
        ? state.customLocation
        : state.selectedLocationName;

    context.pushNamed(
      AppRouterPath.sellRegister.name,
      pathParameters: {'eventId': widget.eventId},
      queryParameters: {
        'scheduleId': widget.scheduleId,
        'date': widget.date,
        'time': widget.time,
        'locationId': state.selectedLocationId ?? '',
        'location': locationName ?? '',
        'area': state.area,
        'row': state.row,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(sellSeatInfoViewModelProvider(_eventIdInt));

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
      centerTitle: true,
      title: Text(
        '좌석 정보 입력',
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => context.pop(),
      ),
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
            onPressed: () =>
                ref.invalidate(sellSeatInfoViewModelProvider(_eventIdInt)),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SellSeatInfoState state) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('정확한 좌석 정보를 입력해주세요.', style: AppTextStyles.heading2),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    '입력한 정보는 다른 사람에게 공개됩니다.',
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  _buildLocationSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildAreaField(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildRowField(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildInfoBox(),
                ],
              ),
            ),
          ),
        ),
        _buildConfirmButton(state),
      ],
    );
  }

  /// 위치 선택 섹션
  Widget _buildLocationSection(SellSeatInfoState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('위치'),
        _buildLocationSelector(state),
        if (state.isCustomLocation) ...[
          const SizedBox(height: AppSpacing.sm),
          AppTextField(
            label: '',
            controller: _customLocationController,
            hintText: '위치를 입력해주세요',
            onChanged: (value) {
              ref
                  .read(sellSeatInfoViewModelProvider(_eventIdInt).notifier)
                  .updateCustomLocation(value);
            },
          ),
        ],
      ],
    );
  }

  Widget _buildLocationSelector(SellSeatInfoState state) {
    return GestureDetector(
      onTap: () => _showLocationBottomSheet(state),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              state.isCustomLocation
                  ? '직접 입력'
                  : (state.selectedLocationName ?? '위치를 선택해주세요'),
              style: AppTextStyles.body1.copyWith(
                color:
                    (state.selectedLocationId != null || state.isCustomLocation)
                    ? AppColors.textPrimary
                    : AppColors.textTertiary,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  void _showLocationBottomSheet(SellSeatInfoState state) {
    FocusScope.of(context).unfocus();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _buildLocationBottomSheetContent(state),
    );
  }

  Widget _buildLocationBottomSheetContent(SellSeatInfoState state) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.md),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Text(
              '위치',
              style: AppTextStyles.heading3.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          ListView.builder(
            shrinkWrap: true,
            itemCount: state.allLocations.length,
            itemBuilder: (context, index) {
              final location = state.allLocations[index];
              final isSelected = location.locationId == 'custom'
                  ? state.isCustomLocation
                  : state.selectedLocationId == location.locationId;
              return _buildLocationItem(location, isSelected);
            },
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ),
    );
  }

  Widget _buildLocationItem(SellSeatLocationUiModel location, bool isSelected) {
    return InkWell(
      onTap: () => _onLocationSelected(location),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            if (isSelected)
              const Icon(Icons.check, color: AppColors.primary, size: 20),
            if (isSelected) const SizedBox(width: AppSpacing.sm),
            Text(
              location.locationName,
              style: AppTextStyles.body1.copyWith(
                color: isSelected ? AppColors.primary : AppColors.textPrimary,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 구역 입력 필드
  Widget _buildAreaField(SellSeatInfoState state) {
    return AppTextField(
      label: '구역',
      controller: _areaController,
      hintText: '예: A구역, B구역',
      onChanged: (value) {
        ref
            .read(sellSeatInfoViewModelProvider(_eventIdInt).notifier)
            .updateArea(value);
      },
    );
  }

  /// 열 입력 필드
  Widget _buildRowField(SellSeatInfoState state) {
    return AppTextField(
      label: '열',
      controller: _rowController,
      hintText: '예: 1열, 2열',
      onChanged: (value) {
        ref
            .read(sellSeatInfoViewModelProvider(_eventIdInt).notifier)
            .updateRow(value);
      },
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Text(
        text,
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildInfoBox() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, color: Color(0xFF2E7D32), size: 24),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              "좌석이 없는 스탠딩 공연인 경우, 입장 번호를 '열'에 입력해주세요.",
              style: AppTextStyles.body2.copyWith(
                color: const Color(0xFF1B5E20),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmButton(SellSeatInfoState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '다음',
          onPressed: state.isValid ? () => _onConfirm(state) : null,
          isLoading: false,
        ),
      ),
    );
  }
}
