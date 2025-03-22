import 'package:flutter/material.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';

void handleError(BuildContext context, ApiError error) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("${error.statusCode} ${error.error}"),
      backgroundColor: Colors.red,
    ),
  );
}
