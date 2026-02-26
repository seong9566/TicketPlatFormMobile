/// 라우트 정보를 담는 클래스
class _Route {
  final String path;
  final String name;

  const _Route(this.path, this.name);
}

/// 앱 라우터 경로 상수
class AppRouterPath {
  const AppRouterPath._();

  static const splash = _Route('/', 'splash');
  static const home = _Route('/home', 'home');
  static const events = _Route('/events', 'events');
  static const search = _Route('/search', 'search');
  static const profile = _Route('/profile', 'profile');
  static const profileEdit = _Route('/profile/edit', 'profileEdit');
  static const changePassword = _Route(
    '/profile/change-password',
    'changePassword',
  );
  static const transactionHistory = _Route(
    '/transaction-history',
    'transactionHistory',
  );
  static const notificationList = _Route('/notifications', 'notificationList');

  static const ticketing = _Route('/ticketing', 'ticketing');
  static const ticketDetail = _Route('/ticket_detail', 'ticketDetail');
  static const chatRoom = _Route('/chat_room', 'chatRoom');

  static const sellTicketCategory = _Route(
    '/sell/category',
    'sellTicketCategory',
  );
  static const sellEventSelection = _Route(
    '/sell/event-selection',
    'sellEventSelection',
  );
  static const sellDateTimeSelection = _Route(
    '/sell/date-time-selection',
    'sellDateTimeSelection',
  );
  static const sellSeatInfo = _Route('/sell/seat-info', 'sellSeatInfo');
  static const sellPrice = _Route('/sell/price', 'sellPrice');
  static const sellAdditionalInfo = _Route(
    '/sell/additional-info',
    'sellAdditionalInfo',
  );
  // Deprecated: Will be removed after refactoring
  static const sellRegister = _Route('/sell/register', 'sellRegister');

  static const login = _Route('/login', 'login');
  static const signUp = _Route('/sign-up', 'signUp');
  static const findId = _Route('/find-id', 'findId');
  static const findPassword = _Route('/find-password', 'findPassword');
  static const imageViewer = _Route('/image_viewer', 'imageViewer');
  static const payment = _Route('/payment', 'payment');
  static const paymentFinal = _Route('/payment/final', 'paymentFinal');
  static const salesDashboard = _Route('/sales-dashboard', 'salesDashboard');
  static const eventTicketList = _Route(
    '/sales-dashboard/event-tickets',
    'eventTicketList',
  );
  static const disputeList = _Route('/disputes', 'disputeList');
  static const disputeCreate = _Route('/disputes/create', 'disputeCreate');
  static const disputeDetail = _Route('/disputes/detail', 'disputeDetail');

  static const bankAccountRegister = _Route(
    '/bank-account/register',
    'bankAccountRegister',
  );
  static const bankAccountDetail = _Route(
    '/bank-account/detail',
    'bankAccountDetail',
  );

  static const balanceOverview = _Route('/balance', 'balanceOverview');
  static const withdrawalRequest = _Route(
    '/withdrawal/request',
    'withdrawalRequest',
  );
  static const withdrawalHistory = _Route(
    '/withdrawal/history',
    'withdrawalHistory',
  );
}
