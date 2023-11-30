import 'package:flutter/material.dart';

class TimeFilterComponents extends StatelessWidget {
  const TimeFilterComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> timeFilterItems = [
      {
        'title': 'Today',
        'value': 'today',
      },
      {
        'title': 'Yesterday',
        'value': 'yesterday',
      },
      {
        'title': 'Last 7 days',
        'value': 'last_7_days',
      },
      {
        'title': 'Last 30 days',
        'value': 'last_30_days',
      },
      {
        'title': 'This month',
        'value': 'this_month',
      },
      {
        'title': 'Last month',
        'value': 'last_month',
      },
      {
        'title': 'Custom',
        'value': 'custom',
      },
    ];
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
        items: timeFilterItems
            .map(
              (item) => DropdownMenuItem<String>(
                value: item['value'],
                child: Text(item['title']),
              ),
            )
            .toList(),
        onChanged: (value) {},
        value: timeFilterItems[0]['value'],
      ),
    );
  }
}
