import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:screl_calender_app/models/holiday_model.dart';

class ApiService {
  final String _baseUrl =
      'https://holidays.abstractapi.com/v1/'; // Abstract API URL
  final String _apiKey =
      '93e936a7b35d46d08ca6d1ecfaaac569'; // Replace with your actual API key

  Future<List<Holiday>> getPublicHolidays(
      String countryCode, int year, int month, int day) async {
    final url = Uri.parse(
        '$_baseUrl?api_key=$_apiKey&country=$countryCode&year=$year&month=$month&day=$day');

    final response = await http.get(url);
    print("url: $url");
    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((holidayJson) => Holiday.fromJson(holidayJson)).toList();
    } else {
      throw Exception('Failed to load holidays');
    }
  }
}
