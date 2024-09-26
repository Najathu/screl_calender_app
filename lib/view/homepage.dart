import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:screl_calender_app/models/holiday_model.dart';
import 'package:screl_calender_app/view/calender_view.dart';
import 'package:screl_calender_app/view_modal/holiday_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    final holidaysAsyncValue = ref.watch(holidayProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screl Calendar'),
        backgroundColor: Colors.blueGrey,
      ),
      body: holidaysAsyncValue.when(
        data: (holidays) {
          return CalendarView(
            holidays: holidays,
            focusedDay: _focusedDay,
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
              // Fetch holidays when a day is selected
              ref
                  .read(holidayProvider.notifier)
                  .fetchHolidays(
                    "IN",
                    selectedDay.year,
                    selectedDay.month,
                    selectedDay.day,
                  )
                  .then((_) {
                // After fetching, show the details in bottom sheet
                final holiday = holidays.firstWhere(
                  (h) =>
                      DateTime.parse(h.date).day == selectedDay.day &&
                      DateTime.parse(h.date).month == selectedDay.month,
                  orElse: () => Holiday(
                    name: 'No Holiday',
                    location: '',
                    date: DateFormat("yyyy-MM-dd").format(selectedDay),
                  ),
                );
                showHolidayDetails(context, holiday);
              });
            },
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () {
          const Center(child: CircularProgressIndicator());
          return null;
        },
        // Removed loading state
      ),
    );
  }

  void showHolidayDetails(BuildContext context, Holiday holiday) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allow for full-screen height if necessary
      builder: (context) {
        return Container(
          width: double.infinity, // Set width to infinity
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Holiday: ${holiday.name}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text('Date: ${holiday.date}'),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
