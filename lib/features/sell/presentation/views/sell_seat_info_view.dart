import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class SellSeatInfoView extends StatefulWidget {
  final String eventId;
  final String date;
  final String time;

  const SellSeatInfoView({
    super.key,
    required this.eventId,
    required this.date,
    required this.time,
  });

  @override
  State<SellSeatInfoView> createState() => _SellSeatInfoViewState();
}

class _SellSeatInfoViewState extends State<SellSeatInfoView> {
  // 상태 변수
  String? _selectedLocation;
  final TextEditingController _directLocationController =
      TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _rowController = TextEditingController();
  bool _isDirectInput = false;

  final List<String> _locations = [
    '직접 입력', // 맨 위 또는 아래? 이미지상 맨 위인듯 하지만 보통 "직접 입력"은 마지막이나 처음에 위치. 이미지에는 "직접 입력"이 선택되어 있음.
    '1층',
    '2층',
    '3층',
    '스탠딩',
    'VIP석',
  ];

  @override
  void dispose() {
    _directLocationController.dispose();
    _areaController.dispose();
    _rowController.dispose();
    super.dispose();
  }

  bool get _isValid {
    bool locationValid = _isDirectInput
        ? _directLocationController.text.isNotEmpty
        : _selectedLocation != null;
    return locationValid &&
        _areaController.text.isNotEmpty &&
        _rowController.text.isNotEmpty;
  }

  void _showLocationBottomSheet() {
    FocusScope.of(context).unfocus(); // 키보드 닫기
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // 바텀시트 높이 제한 해제
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
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
                itemCount: _locations.length,
                itemBuilder: (context, index) {
                  final location = _locations[index];
                  final isSelected = _selectedLocation == location;
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedLocation = location;
                        _isDirectInput = location == '직접 입력';
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                        vertical: AppSpacing.md,
                      ),
                      child: Row(
                        children: [
                          if (isSelected)
                            const Icon(
                              Icons.check,
                              color: AppColors.primary,
                              size: 20,
                            ),
                          if (isSelected) const SizedBox(width: AppSpacing.sm),
                          Text(
                            location,
                            style: AppTextStyles.body1.copyWith(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.textPrimary,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.md),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: Column(
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

                    // 위치 입력
                    _buildLabel('위치'),
                    _buildLocationBottomSheet(),
                    if (_isDirectInput) ...[
                      const SizedBox(height: AppSpacing.sm),
                      AppTextField(
                        label: '',
                        controller: _directLocationController,
                        hintText: '위치를 입력해주세요',
                        onChanged: (_) => setState(() {}),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.xl),

                    // 구역 입력
                    AppTextField(
                      label: '구역',
                      controller: _areaController,
                      hintText: '예: A구역, B구역',
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: AppSpacing.xl),

                    // 열 입력
                    AppTextField(
                      label: '열',
                      controller: _rowController,
                      hintText: '예: 1열, 2열',
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: AppSpacing.xl),

                    // 안내 박스
                    _buildInfoBox(),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),
          ),
          _buildConfirmButton(),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
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

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Text(
        text,
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildLocationBottomSheet() {
    return GestureDetector(
      onTap: _showLocationBottomSheet,
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
              _selectedLocation ?? '직접 입력',
              style: AppTextStyles.body1.copyWith(
                color: _selectedLocation != null
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

  Widget _buildInfoBox() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9), // 연한 초록색 배경
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.info_outline,
            color: Color(0xFF2E7D32), // 진한 초록색 아이콘
            size: 24,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              "좌석이 없는 스탠딩 공연인 경우, 입장 번호를 '열'에 입력해주세요.",
              style: AppTextStyles.body2.copyWith(
                color: const Color(0xFF1B5E20), // 텍스트 색상
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '다음',
          onPressed: _isValid
              ? () {
                  context.pushNamed(
                    AppRouterPath.sellRegister.name,
                    pathParameters: {'eventId': widget.eventId},
                    queryParameters: {
                      'date': widget.date,
                      'time': widget.time,
                      'location': _selectedLocation!,
                      'area': _areaController.text,
                      'row': _rowController.text,
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
