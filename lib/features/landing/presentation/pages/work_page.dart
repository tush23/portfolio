import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions.dart';
import 'package:portfolio/features/landing/data/models/work_model.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});
  static List<WorkModel> works = WorkModel.works;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Work Experience",
              // textScaleFactor: 5,
              // textScaler: TextScaler.linear(2),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  // color: selected ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w600,
                  // height: 0.1,

                  fontSize: 50),
            ),
            56.h,
            ...List.generate(works.length, (i) => _WorkCard(work: works[i]))
          ],
        ),
      ),
    );
  }
}

class _WorkCard extends StatelessWidget {
  const _WorkCard({required this.work});
  final WorkModel work;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "/${work.desingnation}",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 32),
          ),
          16.h,
          Divider(
            color: Colors.grey.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                work.companyName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
              ),
              Text(
                "${work.start} - ${work.end}",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ],
          ),
          16.h,
          ...List.generate(
              work.summary.length,
              (i) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_right),
                      Expanded(child: Text(work.summary[i])),
                    ],
                  ))
        ],
      ),
    );
  }
}
