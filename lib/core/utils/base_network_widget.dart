import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/base_controller.dart';
import 'base_response_handler.dart';

class NetworkWidget<T> extends StatelessWidget {
  const NetworkWidget(
      {super.key,
      required this.controller,
      required this.childBuilder,
      this.loadingWidget = const CircularProgressIndicator(),
      this.noDataWidget = const Text("No data available"),
      this.errorBuilder,
      this.initialWidget = const Text("Init State")});

  final GenericController controller;
  final Widget Function(T data) childBuilder;
  final Widget loadingWidget;
  final Widget noDataWidget;
  final Widget initialWidget;
  final Widget Function(String error)? errorBuilder;

  // Type of T is used as the key
  String get operationKey => T.hashCode.toString();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final responseHandler = controller.getState(operationKey);
      switch (responseHandler.responseState) {
        case ResponseState.loading:
          return Center(child: loadingWidget);

        case ResponseState.init:
          return initialWidget;

        case ResponseState.error:
          final errorText = responseHandler.error ?? "Something went wrong";
          return errorBuilder?.call(errorText) ??
              Center(
                  child: Text(
                errorText,
                maxLines: 3,
              ));

        case ResponseState.success:
          if (responseHandler.data != null) {
            return childBuilder(responseHandler.data! as T);
          } else {
            return Center(child: noDataWidget);
          }

        default:
          return const Center(child: Text("Unknown state"));
      }
    });
  }
}
