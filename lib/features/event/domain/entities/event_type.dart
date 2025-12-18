enum EventType {
  concert(1, 'CONCERT', '콘서트'),
  musical(2, 'MUSICAL', '뮤지컬'),
  sports(3, 'SPORTS', '스포츠'),
  etc(4, 'ETC', '기타');

  final int id;
  final String code;
  final String nameKo;

  const EventType(this.id, this.code, this.nameKo);
}
