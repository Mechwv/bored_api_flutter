import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:bored_api/presentation/widgets/base_card.dart';
import 'package:flutter/material.dart';

Widget ResponseCard(ApiResponse response) {
  return BaseCard(
    child: Column(
      children: [
        TextRow('Activity', response.activity),
        CustomDivider(),
        TextRow('Accessibility', response.accessibility.toString()),
        CustomDivider(),
        TextRow('Type', response.type),
        CustomDivider(),
        TextRow('Participants', response.participants.toString()),
        CustomDivider(),
        TextRow('Price', response.price.toString()),
        if (response.link != null) ...[
          CustomDivider(),
          TextRow('Link', response.link.toString()),
        ],
        if (response.key != null) ...[
          CustomDivider(),
          TextRow('Key', response.key.toString()),
        ],
      ],
    ),
  );
}

Widget TextRow(String text, String value) {
  return Row(
    children: [
      Text(text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(
        width: 10,
      ),
      Text(value,
          style: const TextStyle(fontSize: 16)),
    ],
  );
}

Widget CustomDivider() {
  return const Divider(height: 10, color: Colors.black, thickness: 1.0,);
}

