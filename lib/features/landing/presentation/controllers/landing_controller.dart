import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/landing_model.dart';
import '../../domain/repositories/landing_repository.dart';
import '../../../../core/utils/base_response_handler.dart';
import '../../../../core/controllers/base_controller.dart';
import 'dart:html' as html;

class LandingController extends GenericController {
  final LandingRepository repository;

  LandingController(this.repository);

  var data = ResponseHandler<LandingModel>.init().obs;
  var currentIndex = 0.obs;
  final PageController pageController = PageController();

  void changePage(int index) {
    currentIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void fetchData() async {
    await call<LandingModel>(repository.fetchData());
  }

  void openUrlInNewTab(String url) {
    html.window.open(url, '_blank'); // Open URL in a new tab
  }

  void downloadResume() {
    final fileUrl =
        'https://drive.google.com/file/d/1yWkMM7e_1rdND3Y4HdYPlcxL9p99MkD5/view?usp=sharing';
    openUrlInNewTab(fileUrl); // Open the URL in a new tab
  }
}

class FooterModel {
  final String title;
  final int index;

  FooterModel({required this.title, required this.index});

  static List<FooterModel> footers = [
    FooterModel(title: "Home", index: 0),
    FooterModel(title: "Contact", index: 1),
    FooterModel(title: "Work", index: 2),
    FooterModel(title: "About", index: 3),
  ];
}
