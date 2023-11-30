import 'package:flutter/material.dart';

openModal(
  BuildContext context,
) =>
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      showDragHandle: true,
      builder: (context) => const SizedBox(
        child: Center(
          child: Text('Modal'),
        ),
      ),
    );
