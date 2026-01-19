import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

/// 좌석 정보 입력 화면
class SellSeatInfoView extends ConsumerStatefulWidget {
  final String eventId;

  const SellSeatInfoView({super.key, required this.eventId});

  @override
  ConsumerState<SellSeatInfoView> createState() => _SellSeatInfoViewState();
}

class _SellSeatInfoViewState extends ConsumerState<SellSeatInfoView> {
  final _seatDetailController = TextEditingController();

  int get _eventIdInt => int.parse(widget.eventId);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(sellRegisterViewModelProvider.notifier)
          .loadSeatOptions(_eventIdInt);
    });
  }

  @override
  void dispose() {
    _seatDetailController.dispose();
    super.dispose();
  }

  void _onLocationSelected(SellSeatLocationUiModel location) {
    ref
        .read(sellRegisterViewModelProvider.notifier)
        .selectLocation(location.locationId);
    context.pop();
  }

  void _onSeatGradeSelected(SellSeatGradeUiModel grade) {
    ref
        .read(sellRegisterViewModelProvider.notifier)
        .selectSeatGrade(grade.gradeId);
    context.pop();
  }

  void _onConfirm() {
    context.pushNamed(
      AppRouterPath.sellPrice.name,
      pathParameters: {'eventId': widget.eventId},
    );
  }

  void _onSeatRowTypeSelected(String type) {
    ref.read(sellRegisterViewModelProvider.notifier).selectSeatRowType(type);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellRegisterViewModelProvider);

    if (state.isLoading && state.seatOptions == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.errorMessage != null && state.seatOptions == null) {
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
                .loadSeatOptions(_eventIdInt),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SellRegisterState state) {
    return Column(
      children: [
        if (state.isLoading) const LinearProgressIndicator(),
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSpacing.lg),
                  Text('좌석 정보를 입력해주세요', style: AppTextStyles.heading2),
                  const SizedBox(height: AppSpacing.xl),
                  // 등급
                  _buildSeatGradeField(state),
                  const SizedBox(height: AppSpacing.xl),
                  // 위치
                  _buildLocationSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  // 구역
                  _buildAreaField(state),
                  const SizedBox(height: AppSpacing.xl),
                  // 상세 정보
                  _buildSeatDetailField(state),
                ],
              ),
            ),
          ),
        ),
        _buildConfirmButton(state),
      ],
    );
  }

  Widget _buildSeatGradeField(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('등급', isRequired: true),
        GestureDetector(
          onTap: () => _showSeatGradeBottomSheet(state),
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
                  state.selectedGradeName ?? '등급 선택',
                  style: AppTextStyles.body1.copyWith(
                    color: state.selectedGradeId != null
                        ? AppColors.textPrimary
                        : AppColors.textTertiary,
                  ),
                ),
                const Icon(Icons.chevron_right, color: AppColors.textSecondary),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showSeatGradeBottomSheet(SellRegisterState state) {
    final grades = state.seatOptions?.grades ?? [];

    FocusScope.of(context).unfocus();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _buildGradeSelectionBottomSheet(
        title: '좌석 등급 선택',
        items: grades,
        selectedId: state.selectedGradeId,
        onItemSelected: _onSeatGradeSelected,
      ),
    );
  }

  Widget _buildGradeSelectionBottomSheet({
    required String title,
    required List<SellSeatGradeUiModel> items,
    required Function(SellSeatGradeUiModel) onItemSelected,
    int? selectedId,
  }) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.sm),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            title,
            style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSpacing.md),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedId == item.gradeId;

                return InkWell(
                  onTap: () => onItemSelected(item),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary.withValues(alpha: 0.05)
                          : null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.gradeName,
                            style: AppTextStyles.body1.copyWith(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.textPrimary,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                        if (isSelected)
                          const Icon(
                            Icons.check,
                            color: AppColors.primary,
                            size: 20,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ),
    );
  }

  Widget _buildAreaField(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('구역(Area)', isRequired: false),
        GestureDetector(
          onTap: () => _showAreaBottomSheet(state),
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
                  state.selectedAreaName ?? '구역 선택',
                  style: AppTextStyles.body1.copyWith(
                    color: state.selectedAreaId != null
                        ? AppColors.textPrimary
                        : AppColors.textTertiary,
                  ),
                ),
                const Icon(Icons.chevron_right, color: AppColors.textSecondary),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showAreaBottomSheet(SellRegisterState state) {
    final areas = state.seatOptions?.areas ?? [];

    FocusScope.of(context).unfocus();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _buildAreaSelectionBottomSheet(
        title: '구역 선택',
        items: areas,
        selectedId: state.selectedAreaId,
        onItemSelected: (area) {
          ref
              .read(sellRegisterViewModelProvider.notifier)
              .selectArea(area.areaId);
          context.pop();
        },
      ),
    );
  }

  Widget _buildAreaSelectionBottomSheet({
    required String title,
    required List<SellSeatAreaUiModel> items,
    required Function(SellSeatAreaUiModel) onItemSelected,
    int? selectedId,
  }) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.sm),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            title,
            style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSpacing.md),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedId == item.areaId;

                return InkWell(
                  onTap: () => onItemSelected(item),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary.withValues(alpha: 0.05)
                          : null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.areaName,
                            style: AppTextStyles.body1.copyWith(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.textPrimary,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                        if (isSelected)
                          const Icon(
                            Icons.check,
                            color: AppColors.primary,
                            size: 20,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ),
    );
  }

  Widget _buildLocationSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('위치', isRequired: true),
        GestureDetector(
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
                  state.selectedLocationName ?? '위치 선택',
                  style: AppTextStyles.body1.copyWith(
                    color: state.selectedLocationId != null
                        ? AppColors.textPrimary
                        : AppColors.textTertiary,
                  ),
                ),
                const Icon(Icons.chevron_right, color: AppColors.textSecondary),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showLocationBottomSheet(SellRegisterState state) {
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

  Widget _buildLocationBottomSheetContent(SellRegisterState state) {
    // Note: This one uses SellSeatLocationUiModel, so it's slightly different from generic string picker
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.sm),
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
              '좌석 위치 선택',
              style: AppTextStyles.heading3.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.allLocations.length,
              itemBuilder: (context, index) {
                final location = state.allLocations[index];
                final isSelected =
                    state.selectedLocationId == location.locationId;
                return _buildLocationItem(location, isSelected);
              },
            ),
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
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withValues(alpha: 0.05) : null,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                location.locationName,
                style: AppTextStyles.body1.copyWith(
                  color: isSelected ? AppColors.primary : AppColors.textPrimary,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
            if (isSelected)
              const Icon(Icons.check, color: AppColors.primary, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSeatDetailField(SellRegisterState state) {
    final typeLabel = state.seatRowType == 'row'
        ? '열'
        : state.seatRowType == 'entrance'
        ? '입장 번호'
        : '선택';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('상세 정보', isRequired: true),
        Row(
          children: [
            // Type Selector
            GestureDetector(
              onTap: () => _showRowTypeBottomSheet(state),
              child: Container(
                width: 120, // Fixed width for selector
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: 16, // Match TextField height approx
                ),
                decoration: BoxDecoration(
                  color: AppColors.inputBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        typeLabel,
                        style: AppTextStyles.body1.copyWith(
                          color: state.seatRowType != null
                              ? AppColors.textPrimary
                              : AppColors.textTertiary,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.textSecondary,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            // Detail Input
            Expanded(
              child: AppTextField(
                label: '',
                controller: _seatDetailController,
                hintText: '상세 정보 입력',
                onChanged: (value) {
                  ref
                      .read(sellRegisterViewModelProvider.notifier)
                      .updateSeatDetail(value);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showRowTypeBottomSheet(SellRegisterState state) {
    final types = {'row': '열', 'entrance': '입장 번호'};

    FocusScope.of(context).unfocus();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _buildSelectionBottomSheet(
        title: '입장 정보 선택',
        items: types.keys.toList(),
        itemLabels: types, // Pass map for display names
        selectedItem: state.seatRowType,
        onItemSelected: _onSeatRowTypeSelected,
      ),
    );
  }

  // Generic helper for simple string list bottom sheets
  Widget _buildSelectionBottomSheet({
    required String title,
    required List<String> items,
    required Function(String) onItemSelected,
    String? selectedItem,
    Map<String, String>? itemLabels, // Optional display label mapping
  }) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.sm),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            title,
            style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSpacing.md),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedItem == item;
                final label = itemLabels?[item] ?? item;

                return InkWell(
                  onTap: () => onItemSelected(item),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary.withValues(alpha: 0.05)
                          : null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            label,
                            style: AppTextStyles.body1.copyWith(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.textPrimary,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                        if (isSelected)
                          const Icon(
                            Icons.check,
                            color: AppColors.primary,
                            size: 20,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ),
    );
  }

  Widget _buildLabel(String text, {required bool isRequired}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: RichText(
        text: TextSpan(
          text: text,
          style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
          children: [
            if (isRequired)
              TextSpan(
                text: ' *',
                style: AppTextStyles.body1.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildConfirmButton(SellRegisterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '다음',
          onPressed: state.isSeatInfoValid ? _onConfirm : null,
          isLoading: false,
          backgroundColor: state.isSeatInfoValid
              ? AppColors.primary
              : AppColors.disabled,
        ),
      ),
    );
  }
}
