import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:portfolio/features/landing/presentation/pages/work_page.dart';
import 'package:portfolio/features/landing/presentation/widgets/footer_button.dart';
import '../controllers/landing_controller.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'home_page.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});
  static List<Widget> pages = [
    const HomePage(),
    const ContactPage(),
    const WorkPage(),
    const AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TD",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          ...List.generate(FooterModel.footers.length, (i) {
            var footer = FooterModel.footers[i];
            return Obx(() => FooterButton(
                onTap: () => controller.pageController.jumpToPage(i),
                selected: controller.currentIndex.value == i,
                title: footer.title));
          }),
          SizedBox(
            width: Get.width / 3,
          ),
          TextButton(
              onPressed: controller.downloadResume,
              child: Row(
                children: [
                  Text("Resume",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.yellow,
                          fontWeight: FontWeight.normal,
                          fontSize: 18)),
                  const Icon(HugeIcons.strokeRoundedDownload04)
                ],
              ))
        ],
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.currentIndex.value = index;
        },
        children: pages,
      ),
    );
  }
}
