import 'package:freezed_annotation/freezed_annotation.dart';
// part 'holiday_model.freezed.dart';

@freezed
class Holiday {
  final String name;
  final String? nameLocal;
  final String? language;
  final String? description;
  final String? country;
  final String? location;
  final String? type;
  final String date;
  final String? dateYear;
  final String? dateMonth;
  final String? dateDay;
  final String? weekDay;

  // Constructor
  Holiday({
    required this.name,
    this.nameLocal,
    this.language,
    this.description,
    this.country,
    this.location,
    this.type,
    required this.date,
    this.dateYear,
    this.dateMonth,
    this.dateDay,
    this.weekDay,
  });

  // Convert JSON to Holiday instance
  factory Holiday.fromJson(Map<String, dynamic> json) {
    return Holiday(
      name: json['name'],
      nameLocal: json['nameLocal'],
      language: json['language'],
      description: json['description'],
      country: json['country'],
      location: json['location'],
      type: json['type'],
      date: json['date'],
      dateYear: json['dateYear'],
      dateMonth: json['dateMonth'],
      dateDay: json['dateDay'],
      weekDay: json['weekDay'],
    );
  }

  // Convert Holiday instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'nameLocal': nameLocal,
      'language': language,
      'description': description,
      'country': country,
      'location': location,
      'type': type,
      'date': date,
      'dateYear': dateYear,
      'dateMonth': dateMonth,
      'dateDay': dateDay,
      'weekDay': weekDay,
    };
  }
}
