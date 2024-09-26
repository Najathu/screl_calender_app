import 'package:riverpod/riverpod.dart';
import 'package:screl_calender_app/models/holiday_model.dart';
import 'package:screl_calender_app/services/api_services.dart';

// ViewModel to handle holiday data
class HolidayViewModel extends StateNotifier<AsyncValue<List<Holiday>>> {
  final ApiService _apiService;

  // Initialize with an empty data state instead of loading
  HolidayViewModel(this._apiService) : super(const AsyncValue.data([]));

  // Updated to include month and day
  Future<void> fetchHolidays(
      String countryCode, int year, int month, int day) async {
    try {
      final holidays =
          await _apiService.getPublicHolidays(countryCode, year, month, day);
      state = AsyncValue.data(holidays);
    } catch (e, stackTrace) {
      // Pass both the error and stack trace to AsyncValue.error
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

// Provider for the ViewModel
final holidayProvider =
    StateNotifierProvider<HolidayViewModel, AsyncValue<List<Holiday>>>((ref) {
  final apiService = ApiService();
  return HolidayViewModel(apiService);
});
