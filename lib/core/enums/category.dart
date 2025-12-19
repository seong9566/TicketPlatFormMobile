enum Category {
  concert('concert', '콘서트', 1),
  sports('sports', '스포츠', 2),
  musical('musical', '뮤지컬/연극', 3),
  classic('classic', '클래식/무용', 4),
  etc('etc', '기타', 5);

  final String code;
  final String label;
  final int categoryId;
  const Category(this.code, this.label, this.categoryId);

  static Category fromCode(String code) {
    return Category.values.firstWhere(
      (e) => e.code == code,
      orElse: () => Category.etc,
    );
  }

  static Category fromLabel(String label) {
    return Category.values.firstWhere(
      (e) => e.label == label,
      orElse: () => Category.etc,
    );
  }

  static Category fromId(int id) {
    return Category.values.firstWhere(
      (e) => e.categoryId == id,
      orElse: () => Category.etc,
    );
  }
}
