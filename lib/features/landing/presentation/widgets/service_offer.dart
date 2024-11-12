import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions.dart';
import 'package:portfolio/features/landing/data/models/service_model.dart';

class ServiceOffer extends StatelessWidget {
  const ServiceOffer({super.key});
  static List<Service> service = Service.services;
  static double fontSize = 22;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Solutions\nI can offer",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600, fontSize: 56, height: 0.9),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 16),
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
            "\u2022 Proficient in building applications for Mobile, Web, Windows, and macOS using a unified codebase.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
        8.h,
        Text(
            "\u2022 Experienced in effectively managing application state using GetX, Provider, and Bloc.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
        8.h,
        Text(
            "\u2022 Skilled in crafting visually appealing and performant animations for a superior user experience",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
        8.h,
        Text(
            "\u2022 Deep understanding of Flutter libraries and plugins, optimized for integration and performance.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
        8.h,
        Text(
            "\u2022 Experienced in collaborating with cross-functional teams, delegating tasks, and ensuring project timelines are met.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
        8.h,
        Text(
            "\u2022 Adept at using Git for efficient source code management, including branching, merging, and conflict resolution.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize)),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service, required this.index});
  final Service service;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("0$index/",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, fontSize: 24)),
        24.w,
        Expanded(
          child: Text(service.title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 40, height: 1)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Transform.rotate(
              angle: -40 * (pi / 180),
              child: const Icon(
                Icons.arrow_forward_sharp,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
