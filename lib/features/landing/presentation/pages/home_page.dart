import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions.dart';
import 'package:portfolio/core/widgets/primary_button.dart';
import 'package:portfolio/features/landing/data/models/service_model.dart';
import 'package:portfolio/features/landing/data/models/user_model.dart';
import 'package:portfolio/features/landing/presentation/widgets/service_offer.dart';
import 'dart:html' as html;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
              // textScaleFactor: 5,
              // textScaler: TextScaler.linear(2),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  // color: selected ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w800,
                  // height: ,
                  fontSize: 120),
            ),
            Text(
              user.desingnation,
              // textScaleFactor: 5,
              // textScaler: TextScaler.linear(2),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  // color: selected ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 0.1,
                  fontSize: 50),
            ),
            24.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  user.firmware,
                  // textScaleFactor: 5,
                  // textScaler: TextScaler.linear(2),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // color: selected ? Colors.yellow : Colors.white,
                      fontWeight: FontWeight.normal,
                      // height: 0.1,
                      fontSize: 40),
                ),
                Text(
                  user.location,
                  // textScaleFactor: 5,
                  // textScaler: TextScaler.linear(2),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // color: selected ? Colors.yellow : Colors.white,
                      fontWeight: FontWeight.normal,
                      // height: 0.1,
                      fontSize: 40),
                ),
              ],
            ),
            24.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryButton(
                    onTap: () {
                      final email = 'dubey.tushar23@gmail.com';
                      openEmailClient(email);
                    },
                    text: "Get in touch"),
                PrimaryButton(onTap: () {}, text: "Know more"),
              ],
            ),
            40.h,
            Divider(
              color: Colors.grey.withOpacity(0.2),
            ),
            // 24.h,
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 36),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: ServiceOffer(),
                    ),
                  ),
                  // 24.w,
                  Expanded(
                      flex: 2,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (i, c) => ServiceCard(
                              service: Service.services[c], index: c + 1),
                          separatorBuilder: (i, p) => const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 36),
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                          itemCount: Service.services.length))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void openEmailClient(String email) {
    final mailtoLink = 'mailto:$email';
    html.window
        .open(mailtoLink, '_blank'); // Opens email client in the same tab
  }
}
