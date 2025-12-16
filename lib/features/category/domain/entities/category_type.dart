enum CategoryType {
  concert(1, 'CONCERT', '콘서트'),
  musical(2, 'MUSICAL', '뮤지컬'),
  sports(3, 'SPORTS', '스포츠'),
  exhibition(4, 'EXHIBITION', '전시'),
  classic(5, 'CLASSIC', '클래식'),
  etc(6, 'ETC', '기타');

  final int id;
  final String code;
  final String nameKo;

  const CategoryType(this.id, this.code, this.nameKo);
}
