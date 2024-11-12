import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions.dart';
import 'package:portfolio/features/landing/data/models/user_model.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static UserModel user = UserModel.user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              user.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w800, fontSize: 120),
            ),
            Text(
              user.desingnation,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600, height: 0.1, fontSize: 50),
            ),
            24.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  user.firmware,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.normal, fontSize: 40),
                ),
                Text(
                  user.location,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.normal, fontSize: 40),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            Wrap(
              children: List.generate(
                  user.skills.length,
                  (i) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Chip(
                          side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          label: Text(user.skills[i].name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18)),
                          avatar: Image.network(
                            user.skills[i].icon,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            Text(user.summary,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    wordSpacing: 4, fontWeight: FontWeight.w400, fontSize: 22)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    user.keyPoints.length,
                    (i) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("\u2022 ${user.keyPoints[i]}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20)),
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            const Text("Education:"),
            Text(
              user.education,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.normal, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
