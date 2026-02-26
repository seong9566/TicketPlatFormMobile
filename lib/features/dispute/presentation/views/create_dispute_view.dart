import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/create_dispute_viewmodel.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/create_dispute_state.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/dispute_summary_card.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/dispute_type_card.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/evidence_image_picker.dart';

class CreateDisputeView extends ConsumerStatefulWidget {
  final String transactionId;

  const CreateDisputeView({super.key, required this.transactionId});

  @override
  ConsumerState<CreateDisputeView> createState() => _CreateDisputeViewState();
}

class _CreateDisputeViewState extends ConsumerState<CreateDisputeView> {
  late final TextEditingController _descriptionController;
  late final PageController _pageController;

  static const _types = [
    (type: DisputeTypeCode.fakeTicket, label: '가짜/위조 티켓', emoji: '🚫'),
    (type: DisputeTypeCode.wrongTicket, label: '잘못된 티켓', emoji: '❌'),
    (type: DisputeTypeCode.noDelivery, label: '티켓 미배송', emoji: '📦'),
    (type: DisputeTypeCode.rudeBehavior, label: '비매너 행위', emoji: '😤'),
    (type: DisputeTypeCode.other, label: '기타', emoji: '❓'),
  ];

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _onStepChanged(int step) {
    _pageController.animateToPage(
      step,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final txId = int.tryParse(widget.transactionId) ?? 0;
    final state = ref.watch(createDisputeViewModelProvider);
    final vm = ref.read(createDisputeViewModelProvider.notifier);

    // ViewModel 상태와 PageView 동기화
    ref.listen(createDisputeViewModelProvider.select((s) => s.step), (
      previous,
      next,
    ) {
      if (next != previous) {
        _onStepChanged(next);
      }
    });

    Future<void> handleAction() async {
      if (state.step < 2) {
        String? error;
        if (state.step == 0) error = vm.validateStep1();
        if (state.step == 1) error = vm.validateStep2();

        if (error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.error,
            ),
          );
          return;
        }
        vm.goToStep(state.step + 1);
      } else {
        final ok = await vm.submit(txId);
        if (!mounted) return;

        if (!ok) {
          if (!mounted) return;
          final message = ref.read(createDisputeViewModelProvider).errorMessage;
          if (message != null) {
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                behavior: SnackBarBehavior.floating,
                backgroundColor: AppColors.error,
              ),
            );
          }
          return;
        }

        final createdId = ref
            .read(createDisputeViewModelProvider)
            .createdDisputeId;
        if (createdId != null) {
          if (!mounted) return;
          // ignore: use_build_context_synchronously
          context.goNamed(
            AppRouterPath.disputeDetail.name,
            pathParameters: {'id': createdId.toString()},
          );
        }
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('신고하기'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
          onPressed: () {
            if (state.step > 0) {
              vm.goToStep(state.step - 1);
            } else {
              context.pop();
            }
          },
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: Column(
          children: [
            _buildStepProgress(state.step),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildStep1(state, vm),
                  _buildStep2(state, vm),
                  _buildStep3(state, vm),
                ],
              ),
            ),
            _buildBottomAction(state, handleAction),
          ],
        ),
      ),
    );
  }

  Widget _buildStepProgress(int currentStep) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: List.generate(3, (index) {
          final isActive = index <= currentStep;
          return Expanded(
            child: Container(
              height: 4,
              margin: EdgeInsets.only(right: index < 2 ? AppSpacing.xs : 0),
              decoration: BoxDecoration(
                color: isActive ? AppColors.primary : AppColors.muted,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildStep1(CreateDisputeState state, CreateDisputeViewModel vm) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        Text('신고 사유를 선택해주세요', style: AppTextStyles.heading2),
        const SizedBox(height: AppSpacing.xs),
        Text(
          '해당하는 항목을 하나 선택해주세요.',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        const SizedBox(height: AppSpacing.xl),
        ..._types.map(
          (item) => DisputeTypeCard(
            type: item.type,
            label: item.label,
            emoji: item.emoji,
            isSelected: state.selectedType == item.type,
            onTap: () => vm.selectType(item.type),
          ),
        ),
      ],
    );
  }

  Widget _buildStep2(CreateDisputeState state, CreateDisputeViewModel vm) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('상세 내용을 입력해주세요', style: AppTextStyles.heading2),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '신고 내용을 최대한 자세히 적어주시면 처리에 도움이 됩니다.',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.muted,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: _descriptionController,
                maxLength: 500,
                maxLines: null,
                expands: true,
                onChanged: vm.updateDescription,
                textAlignVertical: TextAlignVertical.top,
                style: AppTextStyles.body1,
                decoration: InputDecoration(
                  hintText: '여기에 내용을 입력하세요 (최소 10자)',
                  hintStyle: AppTextStyles.body1.copyWith(
                    color: AppColors.textSecondary.withValues(alpha: 0.5),
                  ),
                  border: InputBorder.none,
                  counterStyle: AppTextStyles.caption,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep3(CreateDisputeState state, CreateDisputeViewModel vm) {
    final selectedTypeLabel = _types
        .firstWhere(
          (e) => e.type == state.selectedType,
          orElse: () => (type: DisputeTypeCode.other, label: '기타', emoji: '❓'),
        )
        .label;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        Text('증거 자료를 첨부해주세요', style: AppTextStyles.heading2),
        const SizedBox(height: AppSpacing.xs),
        Text(
          '캡처 화면 등 증거가 될 만한 자료를 첨부해주세요. (선택)',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        const SizedBox(height: AppSpacing.lg),
        EvidenceImagePicker(
          images: state.evidences,
          onAdd: () async {
            final message = await vm.pickEvidenceImages();
            if (message != null) {
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          onRemove: vm.removeEvidenceAt,
        ),
        const SizedBox(height: AppSpacing.xl),
        DisputeSummaryCard(
          typeLabel: selectedTypeLabel,
          description: state.description,
          evidenceCount: state.evidences.length,
        ),
      ],
    );
  }

  Widget _buildBottomAction(CreateDisputeState state, VoidCallback onPressed) {
    final isStep2Valid =
        state.step == 1 && state.description.trim().length >= 10;
    final isStep1Valid = state.step == 0 && state.selectedType != null;
    final canGoNext =
        state.step == 2 || (state.step == 0 ? isStep1Valid : isStep2Valid);

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: canGoNext ? AppColors.primary : AppColors.muted,
              foregroundColor: canGoNext
                  ? Colors.white
                  : AppColors.textSecondary,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: state.isSubmitting || !canGoNext ? null : onPressed,
            child: state.isSubmitting
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    state.step == 2 ? '신고 제출하기' : '다음',
                    style: AppTextStyles.heading3.copyWith(
                      color: canGoNext ? Colors.white : AppColors.textSecondary,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
