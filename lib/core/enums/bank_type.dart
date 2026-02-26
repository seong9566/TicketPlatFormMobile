import 'package:ticket_platform_mobile/core/constants/app_assets.dart';

enum BankType {
  kyongnam('경남은행', '039', '39', '경남', 'KYONGNAMBANK'),
  gwangju('광주은행', '034', '34', '광주', 'GWANGJUBANK'),
  // 농협과 같은 아이콘
  localNonghyeop('지역농협', '012', '12', '단위농협', 'LOCALNONGHYEOP'),
  busan('부산은행', '032', '32', '부산', 'BUSANBANK'),
  saemaul('새마을금고', '045', '45', '새마을', 'SAEMAUL'),
  sanlim('산림조합', '064', '64', '산림', 'SANLIM'),
  shinhan('신한은행', '088', '88', '신한', 'SHINHAN'),
  shinhyeop('신협', '048', '48', '신협', 'SHINHYEOP'),
  citi('씨티은행', '027', '27', '씨티', 'CITI'),
  woori('우리은행', '020', '20', '우리', 'WOORI'),
  post('우체국예금보험', '071', '71', '우체국', 'POST'),
  savingBank('저축은행중앙회', '050', '50', '저축', 'SAVINGBANK'),
  jeonbuk('전북은행', '037', '37', '전북', 'JEONBUKBANK'),
  jeju('제주은행', '035', '35', '제주', 'JEJUBANK'),
  kakao('카카오뱅크', '090', '90', '카카오', 'KAKAOBANK'),
  kbank('케이뱅크', '089', '89', '케이', 'KBANK'),
  toss('토스뱅크', '092', '92', '토스', 'TOSSBANK'),
  hana('하나은행', '081', '81', '하나', 'HANA'),
  ibk('IBK기업은행', '003', '03', '기업', 'IBK'),
  kookmin('KB국민은행', '004', '06', '국민', 'KOOKMIN'),
  daegu('iM뱅크(대구)', '031', '31', '대구', 'DAEGUBANK'),
  kdb('한국산업은행', '002', '02', '산업', 'KDBBANK'),
  nonghyeop('NH농협은행', '011', '11', '농협', 'NONGHYEOP'),
  sc('SC제일은행', '023', '23', 'SC제일', 'SC'),
  suhyeop('SH수협은행', '007', '07', '수협', 'SUHYEOP'),
  // 수협과 같은 아이콘 사용
  suhyeopLocal('수협중앙회', '030', '30', '수협중앙회', 'SUHYEOPLOCALBANK');

  final String bankName;
  final String code;
  final String shortCode;
  final String shortName;
  final String englishCode;

  const BankType(
    this.bankName,
    this.code,
    this.shortCode,
    this.shortName,
    this.englishCode,
  );

  String get iconPath {
    switch (this) {
      case BankType.kyongnam:
      case BankType.busan:
        return AppAssets.bankKyongnamBusan;
      case BankType.gwangju:
      case BankType.jeonbuk:
        return AppAssets.bankGwangjuJeonbuk;
      case BankType.localNonghyeop:
      case BankType.nonghyeop:
        return AppAssets.bankNonghyeop;
      case BankType.saemaul:
        return AppAssets.bankSaemaul;
      case BankType.sanlim:
        return AppAssets.bankSanlim;
      case BankType.shinhan:
      case BankType.jeju:
        return AppAssets.bankShinhanJeju;
      case BankType.shinhyeop:
        return AppAssets.bankShinhyeop;
      case BankType.citi:
        return AppAssets.bankCiti;
      case BankType.woori:
        return AppAssets.bankWoori;
      case BankType.post:
        return AppAssets.bankPost;
      case BankType.savingBank:
        return AppAssets.bankSaving;
      case BankType.kakao:
        return AppAssets.bankKakao;
      case BankType.kbank:
        return AppAssets.bankK;
      case BankType.toss:
        return AppAssets.bankToss;
      case BankType.hana:
        return AppAssets.bankHana;
      case BankType.ibk:
        return AppAssets.bankIbk;
      case BankType.kookmin:
        return AppAssets.bankKookmin;
      case BankType.daegu:
        return AppAssets.bankIm;
      case BankType.kdb:
        return AppAssets.bankKdb;
      case BankType.sc:
        return AppAssets.bankSc;
      case BankType.suhyeop:
      case BankType.suhyeopLocal:
        return AppAssets.bankShuhyeop;
    }
  }

  /// bankCode(3자리)로 BankType 조회. 매칭 실패 시 null 반환.
  static BankType? fromCode(String code) {
    final trimmed = code.trim();
    for (final bank in BankType.values) {
      if (bank.code == trimmed || bank.shortCode == trimmed) {
        return bank;
      }
    }
    return null;
  }
}
