class Schedule {
  final String id;
  final String title;
  final String createDate;
  final String? description;
  final bool isImportant; // 중요 여부
  int count; // 수행 횟수 (하루가 지나면 초기화)
  String lastPlayed; //마지막 수행한 날짜

  Schedule({
    required this.id,
    required this.title,
    required this.createDate,
    this.description,
    this.isImportant = false, // 기본값: 중요하지 않음
    this.count = 0,
    String? lastPlayed,
  }) : lastPlayed = lastPlayed ?? DateTime.now().toUtc().toIso8601String();

}
