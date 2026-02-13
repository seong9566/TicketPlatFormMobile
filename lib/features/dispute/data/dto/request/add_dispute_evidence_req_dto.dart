import 'dart:io';

import 'package:dio/dio.dart';

class AddDisputeEvidenceReqDto {
  final File file;
  final String? note;

  const AddDisputeEvidenceReqDto({required this.file, this.note});

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path),
      if (note != null && note!.trim().isNotEmpty) 'note': note!.trim(),
    });
  }
}
