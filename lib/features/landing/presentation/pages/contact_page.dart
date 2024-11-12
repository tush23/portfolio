import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:portfolio/core/utils/extensions.dart';
import 'package:portfolio/core/widgets/primary_button.dart';
import 'package:portfolio/features/landing/data/models/user_model.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _name = TextEditingController();
    final TextEditingController _mail = TextEditingController();
    final TextEditingController _msg = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Get In Touch",
              // textScaleFactor: 5,
              // textScaler: TextScaler.linear(2),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  // color: selected ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 0.1,
                  fontSize: 50),
            ),
          ),
          96.h,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.only(right: 16),
                height: Get.height / 2,
                width: Get.width / 2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(UserModel.user.name,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 24)),
                      leading: const Icon(
                        HugeIcons.strokeRoundedUserCheck01,
                        size: 32,
                      ),
                    ),
                    8.h,
                    ListTile(
                      title: Text(
                        UserModel.user.mobile,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 24),
                      ),
                      leading: const Icon(
                        HugeIcons.strokeRoundedSmartPhone01,
                        size: 32,
                      ),
                    ),
                    8.h,
                    ListTile(
                      title: Text(
                        UserModel.user.email,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 24),
                      ),
                      leading: const Icon(
                        HugeIcons.strokeRoundedMail01,
                        size: 32,
                      ),
                    ),
                    8.h,
                    ListTile(
                      title: Text(
                        "Linkdin",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 24),
                      ),
                      leading: const Icon(
                        HugeIcons.strokeRoundedLinkedin01,
                        size: 32,
                      ),
                    ),
                    8.h,
                    ListTile(
                      title: Text(
                        "Github",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 24),
                      ),
                      leading: const Icon(
                        HugeIcons.strokeRoundedGithub01,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // height: Get.height / 1.8,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        child: _Fields(
                          title: 'Full Name',
                          controller: _name,
                          hint: "Your Full Name",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        child: _Fields(
                          title: 'Mail',
                          controller: _mail,
                          hint: 'Enter your email id',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        child: _Fields(
                          title: 'Message',
                          controller: _msg,
                          maxLine: 2,
                          hint: 'Enter your massege ',
                        ),
                      ),
                      // 8.h,
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PrimaryButton(onTap: () {}, text: "Send Now"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields(
      {required this.title,
      required this.controller,
      required this.hint,
      this.maxLine = 1});
  final String title;
  final String hint;
  final int maxLine;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextField(
            controller: controller,
            maxLines: maxLine,
            decoration: InputDecoration(
                border: const UnderlineInputBorder(), hintText: hint),
          )
        ],
      ),
    );
  }
}
