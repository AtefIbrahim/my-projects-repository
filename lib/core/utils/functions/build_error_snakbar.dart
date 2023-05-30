import 'package:flutter/material.dart';

SnackBar buildSnackBarErrorFunc(String errorMessage) {
  return SnackBar(
    backgroundColor: const Color(0xFFD32F2F),
    content: Text(
      errorMessage,
      style: const TextStyle(color: Colors.white),
    ),
    duration: const Duration(seconds: 2),
  );
}