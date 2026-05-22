import 'package:json_annotation/json_annotation.dart';

class DurationSecondsConverter implements JsonConverter<Duration, int> {
  const DurationSecondsConverter();

  @override
  Duration fromJson(int json) => Duration(seconds: json);

  @override
  int toJson(Duration object) => object.inSeconds;
}

class NullableDurationSecondsConverter
    implements JsonConverter<Duration?, int?> {
  const NullableDurationSecondsConverter();

  @override
  Duration? fromJson(int? json) {
    if (json == null) {
      return null;
    }

    return Duration(seconds: json);
  }

  @override
  int? toJson(Duration? object) => object?.inSeconds;
}
