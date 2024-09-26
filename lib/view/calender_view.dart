import 'package:flutter/material.dart';
import 'package:screl_calender_app/models/holiday_model.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  final List<Holiday> holidays;
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const CalendarView({
    super.key,
    required this.holidays,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: focusedDay,
            selectedDayPredicate: (day) => isSameDay(selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              onDaySelected(selectedDay, focusedDay);
            },
            holidayPredicate: (day) {
              return holidays.any((holiday) =>
                  DateTime.parse(holiday.date).day == day.day &&
                  DateTime.parse(holiday.date).month == day.month);
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.blueGrey[300],
                shape: BoxShape.circle,
              ),
              selectedDecoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
              ),
              holidayTextStyle: const TextStyle(color: Colors.red),
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              leftChevronIcon: Icon(Icons.chevron_left, color: Colors.blueGrey),
              rightChevronIcon:
                  Icon(Icons.chevron_right, color: Colors.blueGrey),
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                final isHoliday = holidays.any((holiday) =>
                    DateTime.parse(holiday.date).day == day.day &&
                    DateTime.parse(holiday.date).month == day.month);
                return Positioned(
                  bottom: 4,
                  child: isHoliday
                      ? const Icon(Icons.holiday_village,
                          color: Colors.red, size: 12.0)
                      : const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
