import 'package:timezone/timezone.dart';

/// The available intervals for periodically showing notifications
enum RepeatInterval { EveryMinute, Hourly, Daily, Weekly }

/// Details of a pending notification that has not been delivered
class PendingNotificationRequest {
  final int id;
  final String title;
  final String body;
  final String payload;

  const PendingNotificationRequest(
      this.id, this.title, this.body, this.payload);
}

/// Used for specifying a time in 24 hour format
class TZTime {
  /// The hour component of the time. Accepted range is 0 to 23 inclusive
  final int hour;

  /// The minutes component of the time. Accepted range is 0 to 59 inclusive
  final int minute;

  /// The seconds component of the time. Accepted range is 0 to 59 inclusive
  final int second;

  /// The location associated with the time.
  final Location location;

  TZTime([this.location, this.hour = 0, this.minute = 0, this.second = 0]) {
    assert(this.location != null);
    assert(this.hour >= 0 && this.hour < 24);
    assert(this.minute >= 0 && this.minute < 60);
    assert(this.second >= 0 && this.second < 60);
  }
}

/// The days of the week
class Day {
  static const Sunday = Day(1);
  static const Monday = Day(2);
  static const Tuesday = Day(3);
  static const Wednesday = Day(4);
  static const Thursday = Day(5);
  static const Friday = Day(6);
  static const Saturday = Day(7);

  static get values =>
      [Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday];

  final int value;

  const Day(this.value);
}
