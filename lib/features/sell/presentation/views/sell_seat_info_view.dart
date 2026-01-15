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
  final _customLocationController = TextEditingController();
  final _areaController = TextEditingController();
  final _rowController = TextEditingController();

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
    _customLocationController.dispose();
    _areaController.dispose();
    _rowController.dispose();
    super.dispose();
  }

  void _onLocationSelected(SellSeatLocationUiModel location) {
    ref
        .read(sellRegisterViewModelProvider.notifier)
        .selectLocation(location.locationId);
    Navigator.pop(context);
  }

  void _onConfirm() {
    context.pushNamed(
      AppRouterPath.sellRegister.name,
      pathParameters: {'eventId': widget.eventId},
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellRegisterViewModelProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: state.isLoading && state.seatOptions == null
          ? const Center(child: CircularProgressIndicator())
          : state.errorMessage != null && state.seatOptions == null
          ? _buildErrorView(state.errorMessage!)
          : _buildBody(state),
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

  Widget _buildLocationSection(SellRegisterState state) {
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
                  .read(sellRegisterViewModelProvider.notifier)
                  .updateCustomLocation(value);
            },
          ),
        ],
      ],
    );
  }

  Widget _buildLocationSelector(SellRegisterState state) {
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

  Widget _buildAreaField(SellRegisterState state) {
    return AppTextField(
      label: '구역',
      controller: _areaController,
      hintText: '예: A구역, B구역',
      onChanged: (value) {
        ref.read(sellRegisterViewModelProvider.notifier).updateArea(value);
      },
    );
  }

  Widget _buildRowField(SellRegisterState state) {
    return AppTextField(
      label: '열',
      controller: _rowController,
      hintText: '예: 1열, 2열',
      onChanged: (value) {
        ref.read(sellRegisterViewModelProvider.notifier).updateRow(value);
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

  Widget _buildConfirmButton(SellRegisterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '다음',
          onPressed: state.isSeatInfoValid ? _onConfirm : null,
          isLoading: false,
        ),
      ),
    );
  }
}
