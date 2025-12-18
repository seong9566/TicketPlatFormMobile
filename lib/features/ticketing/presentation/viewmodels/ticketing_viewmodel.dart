import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_state.dart';

part 'ticketing_viewmodel.g.dart';

@riverpod
class TicketingViewModel extends _$TicketingViewModel {
  @override
  FutureOr<TicketingState> build(String performanceId) async {
    // Mocking initial data fetch
    await Future.delayed(const Duration(milliseconds: 800));

    final mockGrades = [
      const TicketGradeInfo(id: 'all', name: '전체좌석', count: 42),
      const TicketGradeInfo(id: 'vip', name: 'VIP석', count: 12),
      const TicketGradeInfo(id: 'r', name: 'R석', count: 15),
      const TicketGradeInfo(id: 's', name: 'S석', count: 15),
    ];

    final mockListings = [
      const TicketListingUiModel(
        id: 'l1',
        gradeName: 'VIP석',
        seatInfo: '1층 5구역 3열',
        price: 185000,
        originalPrice: 154000,
        tags: ['연석 보유', '시야제한 없음'],
        description:
            '개인 사정으로 콘서트에 못 가게 되어 눈물을 머금고 양도합니다 😭\n배송지 변경으로 바로 보내드려요!\n인증 원하시는 방법 다 가능합니다. 쿨거시 약간의 에눌 가능해요. 연락주세요!',
        ticketCountInfo: '1인 1매',
        transactionFeatures: ['배송지 변경', '안심결제 가능', '예매 내역서', '연석 보유'],
        seller: SellerUiModel(
          id: 'u1',
          nickname: '마이데이123',
          profileImageUrl: 'https://i.pravatar.cc/150?u=u1',
          mannerTemperature: 99.9,
          responseRate: 98,
          transactionCount: 15,
        ),
      ),
      const TicketListingUiModel(
        id: 'l2',
        gradeName: 'R석',
        seatInfo: '2층 12구역 1열',
        price: 132000,
        originalPrice: 132000,
        tags: ['단석', '통로석'],
        description: 'R석입니다.',
        ticketCountInfo: '1인 1매',
        transactionFeatures: ['배송지 변경', '안심결제 가능'],
        seller: SellerUiModel(
          id: 'u2',
          nickname: '제이디',
          profileImageUrl: 'https://i.pravatar.cc/150?u=u2',
          mannerTemperature: 82.5,
          responseRate: 90,
          transactionCount: 8,
        ),
      ),
      const TicketListingUiModel(
        id: 'l3',
        gradeName: 'S석',
        seatInfo: '3층 24구역 5열',
        price: 99000,
        originalPrice: 110000,
        tags: ['2연석', '빠른거래'],
        description: '아옮(아이디 옮기기 가능)',
        ticketCountInfo: '1인 2매',
        transactionFeatures: ['안심결제 가능', '연석 보유'],
        seller: SellerUiModel(
          id: 'u3',
          nickname: '티켓요정',
          profileImageUrl: 'https://i.pravatar.cc/150?u=u3',
          mannerTemperature: 92.0,
          responseRate: 100,
          transactionCount: 22,
        ),
      ),
    ];

    final info = TicketingUiModel(
      id: performanceId,
      title: 'DAY6 월드 투어 서울',
      imageUrl: 'https://images.unsplash.com/photo-1540039155733-5bb30b53aa14',
      eventDate: DateTime(2024, 4, 12, 19, 0),
      location: '잠실실내체육관',
      ticketGrades: mockGrades,
      listings: mockListings,
      isHot: true,
    );

    return TicketingState(ticketingInfo: info, selectedGrade: mockGrades.first);
  }

  void selectGrade(TicketGradeInfo grade) {
    state = AsyncValue.data(state.value!.copyWith(selectedGrade: grade));
  }

  void updateSortBy(String sortBy) {
    state = AsyncValue.data(state.value!.copyWith(sortBy: sortBy));
  }
}
