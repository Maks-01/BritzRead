// Модель прогресса пользователя
class UserProgress {
  final int wpm;
  final double completionPercent;
  final int completedExercises;
  final int totalExercises;

  UserProgress({
    required this.wpm,
    required this.completionPercent,
    required this.completedExercises,
    required this.totalExercises,
  });

  double get averageProgress => totalExercises == 0
      ? 0
      : completedExercises / totalExercises;

  @override
  String toString() {
    return 'WPM: $wpm, Completed: $completedExercises/$totalExercises, %: $completionPercent';
  }
}