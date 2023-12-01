import 'package:e_commerce_admin/src/presentation/screens/home/components/time_filter.dart';
import 'package:e_commerce_admin/src/presentation/view_controller/_controllers.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Expanded(
            child: TimeFilterComponents(),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () => CustomModal.show(
              title: "title",
              message: "message",
              buttonText: "buttonText",
              onPressed: () {},
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.filter_list_alt,
                ),
                SizedBox(width: 10),
                Text('Filter'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
