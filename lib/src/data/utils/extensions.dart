// Extension to DateTime to get the first day of month
extension DateExtension on DateTime {
  DateTime firstDayOfMonth() => DateTime(year, month);
}
