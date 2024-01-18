import 'package:time_machine/time_machine.dart';

int getExperience(String? startPosition) {
  if (startPosition == null) {
    return 0;
  }
  LocalDate today = LocalDate.today();
  LocalDate startDay = LocalDate.dateTime(DateTime.parse(startPosition));
  Period diff = startDay.periodSince(today);
  return diff.years;
}
