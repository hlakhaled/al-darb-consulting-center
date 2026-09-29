import 'package:flutter/material.dart';

class AuthNavigationModel {
  final String message;
  final String actionText;
  final VoidCallback onTap;

  const AuthNavigationModel({
    required this.message,
    required this.actionText,
    required this.onTap,
  });
}